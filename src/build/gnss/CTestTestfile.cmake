# CMake generated Testfile for 
# Source directory: /workspaces/carma_ws/src/autoware.ai/common/gnss
# Build directory: /workspaces/carma_ws/src/build/gnss
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(_ctest_gnss_rostest_test_test_gnss.test "/workspaces/carma_ws/src/build/gnss/catkin_generated/env_cached.sh" "/usr/bin/python3" "/opt/ros/noetic/share/catkin/cmake/test/run_tests.py" "/workspaces/carma_ws/src/build/gnss/test_results/gnss/rostest-test_test_gnss.xml" "--return-code" "/usr/bin/python3 /opt/ros/noetic/share/rostest/cmake/../../../bin/rostest --pkgdir=/workspaces/carma_ws/src/autoware.ai/common/gnss --package=gnss --results-filename test_test_gnss.xml --results-base-dir \"/workspaces/carma_ws/src/build/gnss/test_results\" /workspaces/carma_ws/src/autoware.ai/common/gnss/test/test_gnss.test ")
set_tests_properties(_ctest_gnss_rostest_test_test_gnss.test PROPERTIES  _BACKTRACE_TRIPLES "/opt/ros/noetic/share/catkin/cmake/test/tests.cmake;160;add_test;/opt/ros/noetic/share/rostest/cmake/rostest-extras.cmake;52;catkin_run_tests_target;/opt/ros/noetic/share/rostest/cmake/rostest-extras.cmake;80;add_rostest;/opt/ros/noetic/share/rostest/cmake/rostest-extras.cmake;100;_add_rostest_google_test;/workspaces/carma_ws/src/autoware.ai/common/gnss/CMakeLists.txt;33;add_rostest_gtest;/workspaces/carma_ws/src/autoware.ai/common/gnss/CMakeLists.txt;0;")
subdirs("gtest")
