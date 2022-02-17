
// #include "ros_compat.h"
#include <string>

#include <opencv2/core.hpp>
#include <opencv2/core/core.hpp>
#include <opencv2/highgui/highgui.hpp>

#include <ros/ros.h>

#include "sensor_msgs/Image.h"
#include <fstream>

// CV to ROS image
std::string mat_type2encoding(int mat_type);
void convert_frame_to_message(const cv::Mat &frame, sensor_msgs::Image &msg);

// ROS to CV image
void convert_message_to_frame( const sensor_msgs::ImageConstPtr msg, cv::Mat &frame);
const std::map<std::string,int> cv_map ={
    {"mono8",   CV_8UC1},   // QImage::Format_Grayscale8
    {"bgr8",    CV_8UC3},   // QImage::Format_BGR888
    {"mono16",  CV_16SC1},  // QImage::Format_Grayscale16
    {"rgba8",   CV_8UC4}    // QImage::Format_RGBA8888
};

// Parse labelmap
std::vector< std::string > getClassNames(const std::string& classes_txt);

void load_codes(std::vector<std::vector<void*>>* codes, std::string path);