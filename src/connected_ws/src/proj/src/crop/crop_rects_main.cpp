
#include "proj/crop_rects.h"

int main(int argc, char** argv)
{
  ros::init(argc, argv, "crop_rects");
  CropRects app;
  ros::spin();

  return 0;
}
