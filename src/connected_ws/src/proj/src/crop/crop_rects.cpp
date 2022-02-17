#include "ros/ros.h"

#include "std_msgs/String.h"
#include <std_msgs/Header.h>

#include <sensor_msgs/Image.h>
#include <sensor_msgs/image_encodings.h>

#include "autoware_msgs/DetectedObject.h"
#include "autoware_msgs/DetectedObjectArray.h"

#include <opencv2/imgproc/imgproc.hpp>
#include <opencv2/highgui/highgui.hpp>

#include <cv_bridge/cv_bridge.h>


#include <message_filters/subscriber.h>
#include <message_filters/synchronizer.h>
#include <message_filters/sync_policies/approximate_time.h>

// #include <opencv2/xfeatures2d.hpp>

// #include "include/ros_compat.h"
#include <proj/common.h>
#include <chrono>
#include <iostream>
#include <fstream>


#include <image_transport/image_transport.h>

#include "proj/crop_rects.h"


using namespace cv;





CropRects::CropRects()
{

  ros::NodeHandle private_nh_("~");
  ros::NodeHandle nh;


  image_filter_subscriber_ = new message_filters::Subscriber<sensor_msgs::Image>(private_nh_,
                                                                                 "/image_raw",
                                                                                             1);

  detection_filter_subscriber_ = new message_filters::Subscriber<autoware_msgs::DetectedObjectArray>(private_nh_,
                                                                                                     "/detection/image_detector/objects",
                                                                                             1);

  detections_synchronizer_ =
    new message_filters::Synchronizer<SyncPolicyT>(SyncPolicyT(10),
                                                   *image_filter_subscriber_,
                                                   *detection_filter_subscriber_);

  detections_synchronizer_->registerCallback(
    boost::bind(&CropRects::SyncedDetectionsCallback, this, _1, _2));

    publisher_image_ = node_handle_.advertise<sensor_msgs::Image>("/cropped_sign", 10);
    
}

// std::string mat_type2encoding(int mat_type){
//     switch (mat_type) {
//       case CV_8UC1:
//         return "mono8";
//       case CV_8UC3:
//         return "bgr8";
//       case CV_16SC1:
//         return "mono16";
//       case CV_8UC4:
//         return "rgba8";
//       default:
//         throw std::runtime_error("Unsupported encoding type");
//     }
// }
// void convert_frame_to_message(
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

void convert_message_to_frame(const sensor_msgs::ImageConstPtr msg, cv::Mat &frame){
    cv::Mat img((uint32_t)msg->height,
                (uint32_t)msg->width,
                cv_map.find(msg->encoding)->second,
                (uint8_t*)msg->data.data(),
                static_cast<uint32_t>(msg->step));
    frame = img;
}

void
CropRects::SyncedDetectionsCallback(
  const sensor_msgs::Image::ConstPtr &in_image_msg,
  const autoware_msgs::DetectedObjectArray::ConstPtr &in_objects)
{
  
  try
  {
    image_ = cv_bridge::toCvShare(in_image_msg, "bgr8")->image;
    cv::Mat cropped_image;
    cropped_image = ObjectsToCroppedImg(image_, in_objects);
    
    sensor_msgs::ImagePtr cropped_msg = cv_bridge::CvImage(in_image_msg->header, "bgr8", cropped_image).toImageMsg();
    publisher_image_.publish(cropped_msg);
    
  }
  catch (cv_bridge::Exception& e)
  {
    ROS_ERROR("[%s] Could not convert from '%s' to 'bgr8'.", __APP_NAME__, in_image_msg->encoding.c_str());
  }
}

cv::Mat
CropRects::ObjectsToCroppedImg(cv::Mat in_image, const autoware_msgs::DetectedObjectArray::ConstPtr &in_objects)
{
  cv::Mat final_image = in_image.clone();
  cv::Mat temp;
  // std::vector<Mat> array_of_imgs;
  for (auto const &object: in_objects->objects)
  {
    if (IsObjectValid(object))
    {
      if(object.label=="boat")
      {
        cv::Rect rect;
        rect.x = object.x;
        rect.y = object.y;
        rect.width = object.width;
        rect.height = object.height;

        if (rect.x+rect.width >= in_image.cols)
          rect.width = in_image.cols -rect.x - 1;

        if (rect.y+rect.height >= in_image.rows)
          rect.height = in_image.rows -rect.y - 1;

        //crop rectangle
        // array_of_imgs.push_back(final_image(rect));     
        temp = final_image(rect);
      }
      
    }
  }
  

  return temp;
}//ObjectsToBoxes


bool CropRects::IsObjectValid(const autoware_msgs::DetectedObject &in_object)
{
  if (!in_object.valid ||
      in_object.width < 0 ||
      in_object.height < 0 ||
      in_object.x < 0 ||
      in_object.y < 0
    )
  {
    return false;
  }
  return true;
}//end IsObjectValid