

#ifndef _MatchImages_H
#define _MatchImages_H

#include <vector>
#include <string>
#include <sstream>
#include <cmath>
#include <iomanip>

#include <ros/ros.h>

#include <std_msgs/Header.h>
#include <sensor_msgs/Image.h>

#include <cv_bridge/cv_bridge.h>
#include <opencv2/highgui/highgui.hpp>
#include <opencv2/opencv.hpp>
#include <image_transport/image_transport.h>

#include <message_filters/subscriber.h>
#include <message_filters/synchronizer.h>
#include <message_filters/sync_policies/approximate_time.h>

#define __APP_NAME__ "match_images"

class MatchImages
{

//   std::string input_topic_; //mhn4D
    ros::Subscriber image_filter_subscriber_;
    ros::Publisher publisher_image_;
    ros::NodeHandle node_handle_;
  
//   image_transport::Subscriber subscriber_image_; //mhn4D

//   message_filters::Subscriber<sensor_msgs::Image> *image_filter_subscriber_; //mhn4D 
//   ros::Publisher publisher_image_;

//   cv::Mat image_;
//   std_msgs::Header image_header_; //mhn4D


// void SyncedDetectionsCallback( //mhn4D
//     const sensor_msgs::Image::ConstPtr &in_image_msg,
//     const sensor_msgs::Image::ConstPtr &in_image_msg2);
    void test_callback(const sensor_msgs::ImageConstPtr& msg);
    void match_callback ( const sensor_msgs::ImageConstPtr& msg );
    void convert_message_to_frame(const sensor_msgs::ImageConstPtr msg, cv::Mat &frame);
    void convert_frame_to_message(const cv::Mat & frame, sensor_msgs::Image & msg);

public:
    void Run();
    // MatchImages();
};

#endif  // _MatchImages_h
