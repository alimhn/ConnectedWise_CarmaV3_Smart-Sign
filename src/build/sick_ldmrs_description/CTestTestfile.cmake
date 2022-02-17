# CMake generated Testfile for 
# Source directory: /workspaces/carma_ws/src/autoware.ai/drivers/sick_ldmrs_description
# Build directory: /workspaces/carma_ws/src/build/sick_ldmrs_description
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(_ctest_sick_ldmrs_description_roslaunch-check_launch "/workspaces/carma_ws/src/build/sick_ldmrs_description/catkin_generated/env_cached.sh" "/usr/bin/python3" "/opt/ros/noetic/share/catkin/cmake/test/run_tests.py" "/workspaces/carma_ws/src/build/sick_ldmrs_description/test_results/sick_ldmrs_description/roslaunch-check_launch.xml" "--return-code" "/usr/bin/cmake -E make_directory /workspaces/carma_ws/src/build/sick_ldmrs_description/test_results/sick_ldmrs_description" "/opt/ros/noetic/share/roslaunch/cmake/../scripts/roslaunch-check -o \"/workspaces/carma_ws/src/build/sick_ldmrs_description/test_results/sick_ldmrs_description/roslaunch-check_launch.xml\" \"/workspaces/carma_ws/src/autoware.ai/drivers/sick_ldmrs_description/launch\" ")
set_tests_properties(_ctest_sick_ldmrs_description_roslaunch-check_launch PROPERTIES  _BACKTRACE_TRIPLES "/opt/ros/noetic/share/catkin/cmake/test/tests.cmake;160;add_test;/opt/ros/noetic/share/roslaunch/cmake/roslaunch-extras.cmake;66;catkin_run_tests_target;/workspaces/carma_ws/src/autoware.ai/drivers/sick_ldmrs_description/CMakeLists.txt;22;roslaunch_add_file_check;/workspaces/carma_ws/src/autoware.ai/drivers/sick_ldmrs_description/CMakeLists.txt;0;")
subdirs("gtest")
