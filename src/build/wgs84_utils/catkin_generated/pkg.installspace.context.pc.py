# generated from catkin/cmake/template/pkg.context.pc.in
CATKIN_PACKAGE_PREFIX = ""
PROJECT_PKG_CONFIG_INCLUDE_DIRS = "${prefix}/include".split(';') if "${prefix}/include" != "" else []
PROJECT_CATKIN_DEPENDS = "roscpp;tf2;tf2_ros;tf2_geometry_msgs".replace(';', ' ')
PKG_CONFIG_LIBRARIES_WITH_PREFIX = "-lwgs84_utils_library".split(';') if "-lwgs84_utils_library" != "" else []
PROJECT_NAME = "wgs84_utils"
PROJECT_SPACE_DIR = "/workspaces/carma_ws/src/install/wgs84_utils"
PROJECT_VERSION = "1.3.0"
