#include "common.h"

std::string mat_type2encoding(int mat_type){
    using namespace cv;
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
    const cv::Mat & frame, sensor_msgs::msg::Image & msg){
    // copy cv information into ros message
    msg.height = frame.rows;
    msg.width = frame.cols;
    msg.encoding = mat_type2encoding(frame.type());
    msg.step = static_cast<sensor_msgs::msg::Image::_step_type>(frame.step);
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

// Get label map
std::vector< std::string > getClassNames(const std::string& classes_txt)
{
    std::ifstream classes_file(classes_txt);
    std::vector< std::string > classes;
    if (!classes_file.good())
    {
        std::cerr << "ERROR: can't read file with classes names.n";
        return classes;
    }
    std::string class_name;
    while (std::getline(classes_file, class_name))
    {
        classes.push_back(class_name);
    }
    return classes;
}


