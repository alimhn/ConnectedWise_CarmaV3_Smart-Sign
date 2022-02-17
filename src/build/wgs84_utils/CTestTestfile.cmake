# CMake generated Testfile for 
# Source directory: /workspaces/carma_ws/src/carma-utils/wgs84_utils
# Build directory: /workspaces/carma_ws/src/build/wgs84_utils
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(_ctest_wgs84_utils_gtest_wgs84_uitls_test "/workspaces/carma_ws/src/build/wgs84_utils/catkin_generated/env_cached.sh" "/usr/bin/python3" "/opt/ros/noetic/share/catkin/cmake/test/run_tests.py" "/workspaces/carma_ws/src/build/wgs84_utils/test_results/wgs84_utils/gtest-wgs84_uitls_test.xml" "--return-code" "/workspaces/carma_ws/src/build/wgs84_utils/devel/lib/wgs84_utils/wgs84_uitls_test --gtest_output=xml:/workspaces/carma_ws/src/build/wgs84_utils/test_results/wgs84_utils/gtest-wgs84_uitls_test.xml")
set_tests_properties(_ctest_wgs84_utils_gtest_wgs84_uitls_test PROPERTIES  _BACKTRACE_TRIPLES "/opt/ros/noetic/share/catkin/cmake/test/tests.cmake;160;add_test;/opt/ros/noetic/share/catkin/cmake/test/gtest.cmake;98;catkin_run_tests_target;/opt/ros/noetic/share/catkin/cmake/test/gtest.cmake;63;_catkin_add_google_test;/workspaces/carma_ws/src/carma-utils/wgs84_utils/CMakeLists.txt;87;catkin_add_gmock;/workspaces/carma_ws/src/carma-utils/wgs84_utils/CMakeLists.txt;0;")
subdirs("gtest")
