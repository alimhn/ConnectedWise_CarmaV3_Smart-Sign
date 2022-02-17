#include <ros/ros.h>
#include "sensor_msgs/Image.h"

#include "std_msgs/String.h"

#include <experimental/filesystem>

#include <opencv2/opencv.hpp>
// #include <opencv2/xfeatures2d.hpp>
#include <opencv2/core/core.hpp>
#include <opencv2/highgui/highgui.hpp>
#include <opencv2/opencv_modules.hpp> 

#include "proj/ros_compat.h"
#include <cproj/ommon.h>
#include <chrono>
#include <iostream>
#include <fstream>

// TODO: Replace 'void*' list of target keypoint and descripters with struct

using std::placeholders::_1;

namespace fs = std::experimental::filesystem;
void str_split(std::vector<std::string>& vec, std::string s, std::string del);

class V2Imsg{
    public:
        std::string msg_type;
        std::string msg_id;
        float sign_lat;
        float sign_long;
        std::string msg_detail;
        std::string media_dir;
};

class CSVReader
{
    std::string fileName;
    std::string delimeter;
public:
    CSVReader(std::string filename, std::string delm = ",") :
            fileName(filename), delimeter(delm)
    { }
    // Function to fetch data from a CSV File
    std::map<std::string, V2Imsg > getData(){
        std::ifstream file(fileName);
        std::vector<std::vector<std::string> > dataList;
        std::map<std::string, V2Imsg > msgList;
        std::string line = "";

        // Skip first line of titles
        getline(file, line);

        // Iterate through each line and split the content using delimeter
        while (getline(file, line))
        {
            std::vector<std::string> vec;
            //boost::algorithm::split(vec, line, boost::is_any_of(delimeter));
            str_split(vec, line, delimeter);
            dataList.push_back(vec);
            V2Imsg* m = new V2Imsg;

            // Parse data
            m->msg_type = vec[3];
            m->msg_id = vec[0];
            m->sign_lat = std::stof(vec[2]);
            m->sign_long = std::stof(vec[1]);
            m->msg_detail = vec[4];
            m->media_dir = vec[6];

            msgList.insert(std::pair<std::string, V2Imsg >(vec[0], *m) );
        }
        // Close the File
        file.close();
        return msgList;
    }
};

// Globals
auto StartTime = std::chrono::system_clock::now();
std::vector<std::vector<void*>> codes;
std::map<std::string, V2Imsg> msgList;
std::string package_share_directory;
std::string Block_directory;
cv::Ptr<cv::Feature2D> f2d;
cv::Mat feed;

double kernal[3][3] = {{0, -1.2, 0},
                       {-1.2, 5.7, -1.2},
                       {0, -1.2, 0}};

/// Feature detector
//cv::flann::KDTreeIndexParams index_params(10);
//cv::flann::SearchParams search_params(50);
//cv::FlannBasedMatcher matcher(&index_params, &search_params);
cv::BFMatcher matcher;
/// ID that will be updated upon each match (Save memory and time on creation)
std::string matchID;
cv::Mat gray;



std::string mat_type2encoding(int mat_type){
    switch (mat_type) {
      case CV_8UC1:
        return "mono8";
      case CV_8UC3:
        return "bgr8";
      case CV_16SC1:
        return "mono16";
      case CV_8UC4:
        return "rgba8";
      default:
        throw std::runtime_error("Unsupported encoding type");
    }
}
void convert_frame_to_message(
    const cv::Mat & frame, sensor_msgs::Image & msg){
    // copy cv information into ros message
    msg.height = frame.rows;
    msg.width = frame.cols;
    msg.encoding = mat_type2encoding(frame.type());
    msg.step = static_cast<sensor_msgs::Image::_step_type>(frame.step);
    size_t size = frame.step * frame.rows;
    msg.data.resize(size);
    memcpy(&msg.data[0], frame.data, size);
    //msg.header.frame_id = frame_id_;
}

void convert_message_to_frame(const sensor_msgs::ImageConstPtr msg, cv::Mat &frame){
    cv::Mat img((uint32_t)msg->height,
                (uint32_t)msg->width,
                cv_map.find(msg->encoding)->second,
                (uint8_t*)msg->data.data(),
                static_cast<uint32_t>(msg->step));
    frame = img;
}

bool compare_pts(cv::Point2f a, cv::Point2f b){
    return ((int)(a.x*1000) != (int)(b.x*1000)) ? ((int)(a.x*1000) < (int)(b.x*1000)) : ( (int)(a.y*1000) < (int)(b.y*1000));
}


void str_split(std::vector<std::string>& vec, std::string s, std::string del = " "){
    int start = 0;
    int end = s.find(del);
    while (end != -1) {
        vec.push_back( s.substr(start, end - start) );
        start = end + del.size();
        end = s.find(del, start);
    }
    vec.push_back(s.substr( start, end - start) );
}

std::string* parseId(std::string id){
    // Length of ID name
    int len = 14;

    // Find first dash in ID
    int pos = id.length() - 18;


    return new std::string(id.substr(pos, len));
}

// Preprocess images
cv::Mat* preprocess(cv::Mat& img, float scale_percent){

    cv::Mat t_gray;

    // Convert input to grayscale
    cv::cvtColor(img, t_gray, cv::COLOR_BGR2GRAY);

    // Resize
    int width   = int(125);
    int height  = int(125 * scale_percent );
    cv::Size dim(width,height);

    cv::resize(t_gray, t_gray, dim, 0, 0, cv::INTER_LANCZOS4);

    return new cv::Mat(t_gray);
}

// Preprocess querry images (change scale_percent)
cv::Mat* preprocess_q(cv::Mat& img){

    // Scale querry image as needed
    float scale_percent = (float)(img.size().height)/img.size().width;

    // Grey scale and resize
    cv::Mat *gray = preprocess(img, scale_percent), sharp_gray;

    // Sharpen
    cv::Ptr<cv::CLAHE> clahe = cv::createCLAHE();
    clahe->setClipLimit(2);
    clahe->setTilesGridSize(cv::Size(2,2));
    clahe->apply(*gray, sharp_gray);
    cv::filter2D(sharp_gray, sharp_gray, -1, cv::Mat(3,3, CV_64F, kernal), cv::Point(-1,-1), 0, cv::BORDER_DEFAULT);

    delete gray;
    return new cv::Mat(sharp_gray);
}

void load_codes(std::vector<std::vector<void*>>* codes, std::string path)
{
    std::vector<void*>* temp;
    cv::Mat* gray;

    //codes = new std::vector<std::vector<void*>>;

    // Get filesnames
    for (const auto & entry : fs::directory_iterator(path)){

        std::cout << "File path =" << entry.path().string() << std::endl;

        // Load codeimg
        gray = new cv::Mat(cv::imread(entry.path().string(), 0 ));


        // Load feature matcher
        // Find the keypoints and descriptors using SIFT features
        cv::Ptr<cv::Feature2D> f2d = cv::SIFT::create();
        
        cv::Ptr<cv::FastFeatureDetector> fast = cv::FastFeatureDetector::create();
        fast->setNonmaxSuppression(true);
        
        std::vector<cv::KeyPoint>* keypoints = new std::vector<cv::KeyPoint>();
        cv::Mat* descriptors = new cv::Mat();
        //gray = preprocess(*img);
        //gray = preprocess(*img);

        //f2d->detectAndCompute( *gray, cv::noArray(), *keypoints, *descriptors );
        fast->detect(*gray, *keypoints, cv::noArray());

        std::cout << "File path =" << entry.path().string() << std::endl;
        
        f2d->compute(*gray, *keypoints, *descriptors);
        std::cout << "File path =" << entry.path().string() << std::endl;
        // Store keypoints and descriptors
        temp = new std::vector<void*>;
        temp->push_back(parseId(entry.path().string()));
        temp->push_back(gray);
        temp->push_back(keypoints);
        std::cout << "len(target_keypoint) = " << keypoints->size() << std::endl;
        temp->push_back(descriptors);
        codes->push_back(*temp);
        
    }

}

int out_cnt = 0;
void* v2i_match(cv::Mat img){
    /* Takes in cropped image and returns the matching sign in database or null if not found
    */
    
    // Preprocess image
    gray = *preprocess_q(img);
    
    // Initalize testing keypoint and descriptor
    std::vector<cv::KeyPoint> keypoints;
    cv::Mat descriptors;
    cv::Ptr<cv::FastFeatureDetector> fast = cv::FastFeatureDetector::create();
    fast->setNonmaxSuppression(true);
    //f2d->detectAndCompute( gray, cv::noArray(), keypoints, descriptors );
    fast->detect(gray, keypoints, cv::noArray());
    f2d->compute(gray, keypoints, descriptors);
   
    // Determine message of best match
    int maxIdx = -1, total = 0;
    int max = 15, idx = 0;
    std::vector<void*> bestMatch;
    std::vector<cv::DMatch> matches;
    if (keypoints.size() >= 2){
        cv::Mat* t_descriptors;

        std::set<cv::Point2f, std::function<bool(cv::Point2f,cv::Point2f)>> sign_kp_list(compare_pts);
        std::vector<cv::DMatch> good_match;
        std::vector<std::vector<cv::DMatch>> match;

        for (std::vector<void*> v : codes){
            t_descriptors = static_cast<cv::Mat*>(v[3]);

            // Find the good matches for this image and appends them to 'good'
            if (!(t_descriptors->empty() && descriptors.empty()))
                matcher.knnMatch(descriptors, *t_descriptors, match, 2);

            for (int i = 0; i < match.size(); i++){
                if(&match[i][0] == NULL) break;

                const float ratio = 0.8;

                auto m = match[i][0];
                auto n = match[i][1];
                if (m.distance < ratio * n.distance)
                {
                    // Only count unique points
                    /*if( sign_kp_list.count(keypoints[m.trainIdx].pt) < 1 ){
                        sign_kp_list.insert(keypoints[m.trainIdx].pt);
                        //std::cout << sign_kp[m.trainIdx].pt << std::endl;
                        good_match.push_back(m);
                    }*/
                    good_match.push_back(m);
               }
            }

            // Also finding max match and total number of matches
            // Update max
            if (good_match.size() > max){
                // Update best sign match
                maxIdx = idx;
                // Set new max
                max = good_match.size();
                std::copy(std::begin(good_match), std::end(good_match),  std::back_inserter(matches));
            }
            total += good_match.size();
            idx++;

            // Clean up
            match.clear();
            good_match.clear();
            sign_kp_list.clear();
        }
    }

    // If no (max) match was found
    if (maxIdx < 0 ){
        return NULL;
    }

    bestMatch = codes[maxIdx];
    
    
    // Assign correspoinding Code description to current message 
    matchID = *static_cast<std::string*>(bestMatch[0]);
    ROS_INFO("V2I ID: %s", matchID.c_str());
    
    std::cout << msgList.at(matchID).msg_id << " " << matches.size() << std::endl;

    // Create output image
    cv::Mat lines;
    cv::drawMatches(gray, keypoints,
        *static_cast<cv::Mat*>(bestMatch[1]),
        *static_cast<std::vector<cv::KeyPoint>*>(bestMatch[2]),
         matches, lines, cv::Scalar::all(-1),
        cv::Scalar::all(-1), std::vector<char>(),
        cv::DrawMatchesFlags::NOT_DRAW_SINGLE_POINTS );
        
    // cv::imshow("result", lines);
    // cv::waitKey(3);
    
    
    // std::string command = "/home/carma/Desktop/qmapbox2/qmapboxglapp " + msgList.at(matchID).msg_id;
    // if(!system(command.c_str()))
    //     ROS_ERROR("Could not run %s route", msgList.at(matchID).msg_id);
        
    // try{
    //     //cv::imwrite("/home/carma/Desktop/AutoConnectV2/src/v2i/Crops_out/img_"+std::to_string(out_cnt++)+".png", lines);
    // }catch(std::exception& e){}
    

    // Clean up
    matches.clear();
    
    std::cout << "Ended" << std::endl;
    
    // Return message description
    return &msgList.at(matchID);
    
}

int img_cnt = 0;
void run(cv::Mat v2i_img){
    if(v2i_img.empty()){
        ROS_ERROR("Image was empty.");
        return;
    }
    //cv::imwrite("/home/carma/Desktop/AutoConnectV2/src/v2i/Crops/img_"+std::to_string(img_cnt++)+".png", v2i_img);
    
    //cv::imshow("crop", v2i_img);
    //cv::waitKey(3
    
    // Run match
    auto v2i_msg = v2i_match(v2i_img);
    // publisher_image_matched.publish(v2i_msg);
}

int nxt_img = 0;
std::vector<std::string> list;
void cropped_callback(const sensor_msgs::ImageConstPtr msg){
    auto EndTime = std::chrono::system_clock::now();
    double elapsed = std::chrono::duration_cast<std::chrono::milliseconds>(EndTime - StartTime).count()/1000.0;
    
    if (elapsed > 3.0){
        std::cout<<"111111111111111";
        sensor_msgs::ImageConstPtr temp = msg;
        cv::Mat img;// = cv::imread(list[nxt_img++]);
        convert_message_to_frame(temp, img);
        run(img);
        StartTime = std::chrono::system_clock::now();
    }

}

// void listDir(std::string dir, std::vector<std::string>& list){
    
//     for (const auto & entry : fs::directory_iterator(dir)){
    
//         //std::cout << "File path =" << entry.path().string() << std::endl;
        
//         // Save path
//         list.push_back( entry.path().string() );
//     }
    
// }

cv::Mat img;
int main(int argc, char** argv) {

  
    
    //package_share_directory = ament_index_cpp::get_package_share_directory("proj");
    package_share_directory ="home/carma/connected_ws";
    Block_directory = "src/proj/src/v2i/Data/6block";
   
            
    // Load reference images
    load_codes(&codes, Block_directory);
    // Load test images
    //listDir("/home/carma/Enes-v2i/signs", list);
    
    // Set Feature Detector algorithm
    //index_params.setAlgorithm(0);
    
    //Test loaded codes
    //std::cout << "codes.size() = " << codes.size() << std::endl;
    //std::cout << "codes[0] = " << *static_cast<std::string*>(codes[0][0]) << std::endl;
    
    
    // Creating an object of CSVWriter
    CSVReader reader(package_share_directory+"/../../../../src/proj/src/v2i/Data/msg_data.csv");

    // Get the data from CSV File
    msgList = reader.getData();
        
    // Initialize subscribers and publishers   
    
    ros::NodeHandle node_handle;//to receive args

    ros::Subscriber  subscriber_cropped_image = node_handle.subscribe("/cropped_sign", 1, cropped_callback);

    // ros::Publisher   publisher_image_matched = node_handle.advertise<std_msgs::String>("/matched_image", 1);


    //auto sub_  = ROS_CREATE_SUBSCRIBER(sensor_msgs::Image, "/cropped_sign", 20, cropped_callback);
    
	ROS_INFO("V2I node initialized, waiting for messages");
	ros::spin();
    
    // Free Feature detector parameters first
//    delete &index_params, &search_params;
    
    for(std::vector<void*> code : codes) for(int i = 0; i < code.size(); i++){
        try{
            free(code[i]);
        }catch(std::exception& e){
            std::cout << "index " << i << " didn't work" << std::endl;
        }
    }
    try{
        codes.clear();
    }catch(std::exception& e){
        std::cout << "The clear" << std::endl;
    }
    
    return 0;
}
