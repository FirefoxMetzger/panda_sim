# Franka Emika Panda Simulator

This is a Gazebo based docker image that has a model of the Franka Emika Panda robot pre-installed.

## Installation
Installation should be fairly straight forward:

1. Clone the repo
2. run the build.sh script
3. docker run -it panda_sim

## Getting just the model
If you want to only get the (.sdf) model of the robot, you can have a look at the `build.sh`. The two docker commands will generate it from the .xacro, and the subsequent copy moves it into the correct location inside the `pandas` folder. Note that during the build a temporary copy of the folder is created. If you are unable to work this out, feel free to open an issue, and I can see if I can help.

## Issues
If you have any problems setting this up, please feel free to open an issue.