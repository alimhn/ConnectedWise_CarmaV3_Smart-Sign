
#include "proj/match_images.h"

int main(int argc, char** argv)
{
  ros::init(argc, argv, "match_images");
  MatchImages app;
  app.Run();

  return 0;
}
