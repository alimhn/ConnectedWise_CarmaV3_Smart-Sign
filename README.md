Under "src" directory, our new workspace, connected_ws, is added which contains functionality of detecting smart signs.

To use our node:

1) It is enought to build Autoware and our node. For this aim in the VS Code terminal execute:
  
        AUTOWARE_COMPILE_WITH_CUDA=1 colcon build --base-paths src/autoware.ai src/carma-msgs src/connected_ws
  
2) Source the build inside "~/carma_ws" directory:

        source install/setup.bash
  
3) Run the following roslaunch command:

        roslaunch proj proj.launch
   
4) Following rostopics:

        image_raw  --> output of reading an image inside connected_ws directory and publishing image topic
        image_rects --> image output of YoloV3  
        cropped_sign --> output for detected and cropped sign
        res_sign --> output for matched sign with the existing signs in the database
    
    
NOTE: For this project, please download the config and weights files from following link:

https://drive.google.com/drive/folders/13zzcEwD4B5Ggt1jnfLzPP0uMbhyoySN6?usp=sharing
