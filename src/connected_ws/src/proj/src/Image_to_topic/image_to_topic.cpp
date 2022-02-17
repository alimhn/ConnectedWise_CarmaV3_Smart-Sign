#include <ros/ros.h>
#include <opencv2/imgproc/imgproc.hpp>
#include <opencv2/highgui/highgui.hpp>
#include <cv_bridge/cv_bridge.h>
#include <sensor_msgs/image_encodings.h>
#include <opencv2/opencv.hpp>

int main(int argc, char** argv)
{
  
  ros::init(argc, argv, "v2i_image_pub");
  ros::NodeHandle nh;
  ros::NodeHandle private_node_handle("~");
  
  
  std::string image_file;


  if (private_node_handle.getParam("/v2i_image_raw/image_file", image_file))
  {
      ROS_INFO("image File : %s", image_file.c_str());
  }
  else
  {
      
     
      ROS_INFO("No image File was received. Finishing execution.");
      return 0;
  }
  

    cv_bridge::CvImage cv_image;
    for(int i=0;i<100;i++) std::cout<<image_file;
    cv_image.image = cv::imread(image_file+"trsign.jpg",cv::IMREAD_COLOR);
    cv_image.encoding = "bgr8";
    
    sensor_msgs::Image ros_image;
    cv_image.toImageMsg(ros_image);

  ros::Publisher pub = nh.advertise<sensor_msgs::Image>("/image_raw", 1);
  ros::Rate loop_rate(5);

  while (nh.ok()) 
  {
    pub.publish(ros_image);
    loop_rate.sleep();
  }
  return 0;
}

