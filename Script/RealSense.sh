#!/bin/bash

# Meteor Controller
gnome-terminal -t "Meteor Controller" -x bash -c 'roslaunch dashgo_driver demo.launch'
sleep 1

# RealSense 
# gnome-terminal -t "ZED2" -x bash -c 'roslaunch ~/Launch/ZED2.launch'
# sleep 3

# Navigation
gnome-terminal -t "Navigation" -x bash -c 'roslaunch ~/Launch/RealSense_VisualSLAM/CeilingSLAMwith2xD455.launch'
sleep 5

# Planner
gnome-terminal -t "Planner" -x bash -c 'roslaunch car_controller Meteor_navigation_3DLiDAR.launch'
sleep 2

# TopologyMap
gnome-terminal -t "TopologyMap" -x bash -c 'roslaunch ~/Launch/TopologyMap.launch'
sleep 2

# laser
gnome-terminal -t "laser" -x bash -c 'roslaunch ~/Launch/RealSense_VisualSLAM/laser_scan_obstacle_detection_2xD455.launch'
sleep 2

# GUI
# gnome-terminal -t "GUI" -x bash -c 'roslaunch robot_control gui.launch'
# sleep 1