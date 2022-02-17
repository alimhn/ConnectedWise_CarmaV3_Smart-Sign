#include <ros/ros.h>
#include "sensor_msgs/Image.h"
#include <iostream>
#include "std_msgs/String.h"

#include <opencv2/core/core.hpp>
#include <opencv2/features2d/features2d.hpp>
#include <opencv2/highgui/highgui.hpp>
#include <opencv2/opencv.hpp>
#include <opencv2/opencv_modules.hpp> 

#include <cv_bridge/cv_bridge.h>

// #include "proj/ros_compat.h"
#include <proj/common.h>
#include <chrono>
#include <iostream>
#include <fstream>


#include <message_filters/subscriber.h>
#include <message_filters/synchronizer.h>
#include <message_filters/sync_policies/approximate_time.h>

#include "proj/match_images.h"

#include <experimental/filesystem>

using namespace std;
using namespace cv;
namespace fs = std::experimental::filesystem;

// MatchImages::MatchImages() //mhn4D
// {
    
 
//   ros::NodeHandle private_nh_("~");
//   ros::NodeHandle nh;

 


//      image_filter_subscriber_ = new message_filters::Subscriber<sensor_msgs::Image>(private_nh_,
//                                                                                  "/cropped_sign",
//                                                                                              1);
                                                                                             
//     detections_synchronizer_ =
//     new message_filters::Synchronizer<SyncPolicyT>(SyncPolicyT(10),
//                                                    *image_filter_subscriber_,
//                                                    *image_filter_subscriber_);

//   detections_synchronizer_->registerCallback(
//     boost::bind(&MatchImages::SyncedDetectionsCallback, this, _1, _2));

//     publisher_image_ = node_handle_.advertise<sensor_msgs::Image>("/res_sign", 10);
//    ros::Rate loop_rate(10);
    
// }



    // ros::Publisher   publisher_image_matched = node_handle.advertise<std_msgs::String>("/matched_image", 1);
   


void MatchImages::convert_message_to_frame(const sensor_msgs::ImageConstPtr msg, cv::Mat &frame){
    cv::Mat img((uint32_t)msg->height,
                (uint32_t)msg->width,
                cv_map.find(msg->encoding)->second,
                (uint8_t*)msg->data.data(),
                static_cast<uint32_t>(msg->step));
    frame = img;
}
// void MatchImages::convert_frame_to_message( //mhn4D
//     const cv::Mat & frame, sensor_msgs::Image & msg){
//     // copy cv information into ros message
//     msg.height = frame.rows;
//     msg.width = frame.cols;
//     msg.encoding = mat_type2encoding(frame.type());
//     msg.step = static_cast<sensor_msgs::Image::_step_type>(frame.step);
//     size_t size = frame.step * frame.rows;
//     msg.data.resize(size);
//     memcpy(&msg.data[0], frame.data, size);
//     //msg.header.frame_id = frame_id_;
// }

void MatchImages::test_callback( const sensor_msgs::ImageConstPtr& msg){
        
        
        sensor_msgs::ImageConstPtr temp = msg;
        cv::Mat img;// = cv::imread(list[nxt_img++]);
        convert_message_to_frame(temp, img);

          cv::Mat t_gray;

    // Convert input to grayscale
    cv::cvtColor(img, t_gray, cv::COLOR_BGR2GRAY);
    t_gray = t_gray > 128;


    cv_bridge::CvImage img_bridge;
    sensor_msgs::ImagePtr res_msg; // >> message to be sent

    

    img_bridge = cv_bridge::CvImage(msg->header, "bgr8", t_gray);
    res_msg = img_bridge.toImageMsg();

    publisher_image_.publish(res_msg);

}

void MatchImages::Run()
{
    // publisher_objects_ = node_handle_.advertise<autoware_msgs::DetectedObjectArray>("/detection/image_detector/objects", 1);
    image_filter_subscriber_ = node_handle_.subscribe("/cropped_sign", 1, &MatchImages::match_callback, this);
    publisher_image_ = node_handle_.advertise<sensor_msgs::Image>("/res_sign", 1);

    ros::spin();   
}

void MatchImages::match_callback ( const sensor_msgs::ImageConstPtr& msg )
{

    std::string path = "src/proj/src/match/Data/6block/Sign1.png";
    cv::Mat img_1 = imread ( path, IMREAD_COLOR );
    sensor_msgs::ImageConstPtr temp = msg;
    cv::Mat img_2;
    convert_message_to_frame(msg,img_2);

    cv::Size size(20,20);
    cv::resize(img_1,img_1,size);
    cv::resize(img_2,img_2,size);

    std::vector<KeyPoint> keypoints_1, keypoints_2;
    Mat descriptors_1, descriptors_2;
    Ptr<FeatureDetector> detector = ORB::create();
    Ptr<DescriptorExtractor> descriptor = ORB::create();
    
    Ptr<DescriptorMatcher> matcher  = DescriptorMatcher::create ( "BruteForce-Hamming" );


    detector->detect ( img_1,keypoints_1 );
    detector->detect ( img_2,keypoints_2 );

    descriptor->compute ( img_1, keypoints_1, descriptors_1 );
    descriptor->compute ( img_2, keypoints_2, descriptors_2 );

    Mat outimg1;
    drawKeypoints( img_1, keypoints_1, outimg1, Scalar::all(-1), DrawMatchesFlags::DEFAULT );
   

    vector<DMatch> matches;
    // BFMatcher matcher ( NORM_HAMMING );
    matcher->match ( descriptors_1, descriptors_2, matches );

    double min_dist=10000, max_dist=0;

    for ( int i = 0; i < descriptors_1.rows; i++ )
    {
        double dist = matches[i].distance;
        if ( dist < min_dist ) min_dist = dist;
        if ( dist > max_dist ) max_dist = dist;
    }



    std::vector< DMatch > good_matches;
    for ( int i = 0; i < descriptors_1.rows; i++ )
    {
        if ( matches[i].distance <= max ( 2*min_dist, 30.0 ) )
        {
            good_matches.push_back ( matches[i] );
        }
    }

    Mat img_match;
    Mat img_goodmatch;
    drawMatches ( img_1, keypoints_1, img_2, keypoints_2, matches, img_match );
    drawMatches ( img_1, keypoints_1, img_2, keypoints_2, good_matches, img_goodmatch );
    
    sensor_msgs::ImagePtr res_msg = cv_bridge::CvImage(temp->header, "bgr8", img_match).toImageMsg();
    publisher_image_.publish(res_msg);

    

}
// ///////////////////////////////////////////ali//////////////////////////////////



