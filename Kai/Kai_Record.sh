#!/bin/bash

rosbag record -o Kai_Dataset.bag /camera/color/image_raw /forkcamera/color/image_raw /cmd_vel /cmd_fork
