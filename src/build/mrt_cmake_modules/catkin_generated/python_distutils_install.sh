#!/bin/sh

if [ -n "$DESTDIR" ] ; then
    case $DESTDIR in
        /*) # ok
            ;;
        *)
            /bin/echo "DESTDIR argument must be absolute... "
            /bin/echo "otherwise python's distutils will bork things."
            exit 1
    esac
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/workspaces/carma_ws/src/autoware.ai/mrt_cmake_modules"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/workspaces/carma_ws/src/install/mrt_cmake_modules/lib/python3/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/workspaces/carma_ws/src/install/mrt_cmake_modules/lib/python3/dist-packages:/workspaces/carma_ws/src/build/mrt_cmake_modules/lib/python3/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/workspaces/carma_ws/src/build/mrt_cmake_modules" \
    "/usr/bin/python3" \
    "/workspaces/carma_ws/src/autoware.ai/mrt_cmake_modules/setup.py" \
     \
    build --build-base "/workspaces/carma_ws/src/build/mrt_cmake_modules" \
    install \
    --root="${DESTDIR-/}" \
    --install-layout=deb --prefix="/workspaces/carma_ws/src/install/mrt_cmake_modules" --install-scripts="/workspaces/carma_ws/src/install/mrt_cmake_modules/bin"
