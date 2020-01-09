# Franka Emika Panda Simulator

This is a Gazebo based docker image that has a model of the Franka Emika Panda robot 
pre-installed. The original .xacro files were taken from the official Framka Emika
[ros package repo](https://github.com/frankaemika/franka_ros) and are also published
under Apache 2.0.

## Installation
Installation should be fairly straight forward:

1. Clone the repo
2. run the build.sh script
3. docker run -it panda_sim

## Getting just the model
If you want to only get the (.sdf) models of the robot, you can build the docker image by
running the `build.sh`. It will create a tmp direcory in the project and within it there
are two folders. `panda_arm_hand` is the model with gripper attached, and `panda_arm` is 
the model without any endeffector.

## Issues
If you have any problems setting this up, please feel free to open an issue.