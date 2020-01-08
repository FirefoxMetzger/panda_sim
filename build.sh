#!/bin/bash

mkdir -p ${PWD}/tmp

cp -r ${PWD}/assets/panda ${PWD}/tmp

docker run -v ${PWD}/assets/franka_description:/xacro osrf/ros:kinetic-desktop-full rosrun xacro xacro --inorder /xacro/robots/panda_arm_hand.urdf.xacro > ${PWD}/tmp/panda.urdf
docker run -v ${PWD}/tmp:/urdf gazebo gz sdf -p /urdf/panda.urdf > ${PWD}/panda/model.sdf

docker build -t panda_sim:latest ${PWD}

rm -r ${PWD}/tmp