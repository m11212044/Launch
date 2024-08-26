#!/bin/bash

# rosbag record -o Dataset_ZED2_EL_2F.bag /zed/zed_node/imu/data /zed/zed_node/imu/mag /zed/zed_node/depth/camera_info /zed/zed_node/depth/depth_registered /zed/zed_node/rgb/camera_info /zed/zed_node/rgb/image_rect_color /wheel_odom
rosbag record -o Dataset_ZED2_EL_2F.bag /zed/zed_node/imu/data /zed/zed_node/depth/depth_registered /zed/zed_node/rgb/image_rect_color
