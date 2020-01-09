FROM gazebo:gzserver9-xenial

COPY tmp/panda_arm_hand /root/.gazebo/models/panda
COPY tmp/panda_arm /root/.gazebo/models/panda