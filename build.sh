#!/bin/bash

mkdir -p ${PWD}/tmp
rm -r ${PWD}/tmp/ && mkdir -p ${PWD}/tmp

# build Panda .sdf with Gripper attached
cp -r ${PWD}/assets/panda_arm_hand ${PWD}/tmp
docker run -v ${PWD}/assets/panda_xacro:/xacro osrf/ros:kinetic-desktop-full rosrun xacro xacro --inorder /xacro/panda_arm_hand.urdf.xacro > ${PWD}/tmp/panda_hand_arm.urdf
docker run -v ${PWD}/tmp:/urdf gazebo gz sdf -p /urdf/panda_hand_arm.urdf > ${PWD}/tmp/panda_arm_hand/model.sdf

# build Panda .sdf with Gripper attached
cp -r ${PWD}/assets/panda_arm ${PWD}/tmp
docker run -v ${PWD}/assets/panda_xacro:/xacro osrf/ros:kinetic-desktop-full rosrun xacro xacro --inorder /xacro/panda_arm.urdf.xacro > ${PWD}/tmp/panda_arm.urdf
docker run -v ${PWD}/tmp:/urdf gazebo gz sdf -p /urdf/panda_arm.urdf > ${PWD}/tmp/panda_arm/model.sdf

# Build the image
docker build -t panda_sim:latest ${PWD}
