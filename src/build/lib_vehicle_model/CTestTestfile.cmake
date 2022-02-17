# CMake generated Testfile for 
# Source directory: /workspaces/carma_ws/src/carma-vehicle-model-framework/lib_vehicle_model
# Build directory: /workspaces/carma_ws/src/build/lib_vehicle_model
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(_ctest_lib_vehicle_model_gtest_lib_vehicle_model-test "/workspaces/carma_ws/src/build/lib_vehicle_model/catkin_generated/env_cached.sh" "/usr/bin/python3" "/opt/ros/noetic/share/catkin/cmake/test/run_tests.py" "/workspaces/carma_ws/src/build/lib_vehicle_model/test_results/lib_vehicle_model/gtest-lib_vehicle_model-test.xml" "--working-dir" "/workspaces/carma_ws/src/carma-vehicle-model-framework/lib_vehicle_model/test" "--return-code" "/workspaces/carma_ws/src/build/lib_vehicle_model/devel/lib/lib_vehicle_model/lib_vehicle_model-test --gtest_output=xml:/workspaces/carma_ws/src/build/lib_vehicle_model/test_results/lib_vehicle_model/gtest-lib_vehicle_model-test.xml")
set_tests_properties(_ctest_lib_vehicle_model_gtest_lib_vehicle_model-test PROPERTIES  _BACKTRACE_TRIPLES "/opt/ros/noetic/share/catkin/cmake/test/tests.cmake;160;add_test;/opt/ros/noetic/share/catkin/cmake/test/gtest.cmake;98;catkin_run_tests_target;/opt/ros/noetic/share/catkin/cmake/test/gtest.cmake;63;_catkin_add_google_test;/workspaces/carma_ws/src/carma-vehicle-model-framework/lib_vehicle_model/CMakeLists.txt;199;catkin_add_gmock;/workspaces/carma_ws/src/carma-vehicle-model-framework/lib_vehicle_model/CMakeLists.txt;0;")
subdirs("gtest")
