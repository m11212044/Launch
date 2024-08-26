#!/bin/bash

rosbag record -o Dataset_ZED2_EL2F_DynamicEnvironment.bag \
    /zed/zed_node/imu/data \
    /zed/zed_node/depth/camera_info \
    /zed/zed_node/depth/depth_registered \
    /zed/zed_node/rgb/camera_info \
    /zed/zed_node/rgb/image_rect_color \
    /vins_estimator/odometry \
    /tf \
    /tf_static
