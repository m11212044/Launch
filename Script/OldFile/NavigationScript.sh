#!/bin/bash

# Meteor Controller
gnome-terminal -t "Meteor Controller" -x bash -c 'roslaunch ~/Launch/Meteor.launch'
sleep 1

# Realsense 
gnome-terminal -t "Realsense" -x bash -c 'roslaunch ~/Launch/RealSense_1xD455_CeilingSLAM_Left.launch'
sleep 1

# Realsense 
gnome-terminal -t "Realsense" -x bash -c 'roslaunch ~/Launch/RealSense_1xD455_CeilingSLAM_Right.launch'
sleep 3

# Localization
gnome-terminal -t "Localization" -x bash -c 'roslaunch CeilingSLAMwith2xD455.launch localization:=true'
sleep 5

# Navigation
gnome-terminal -t "Navigation" -x bash -c 'roslaunch car_controller Meteor_navigation_3DLiDAR.launch'
sleep 1

# Realsense 
gnome-terminal -t "Realsense" -x bash -c 'roslaunch ~/Launch/RealSense_1xD435_VisualServoing.launch'
sleep 1

# AprilTag Up
gnome-terminal -t "AprilTag Up" -x bash -c 'roslaunch ~/Launch/AprilTag_Up.launch'
sleep 1

# AprilTag Down
gnome-terminal -t "AprilTag Down" -x bash -c 'roslaunch ~/Launch/AprilTag_Down.launch'
sleep 1

# PBVS Server
gnome-terminal -t "PBVS Server" -x bash -c 'roslaunch ~/Launch/PBVS_Server.launch'
sleep 1

# Topology Map 
gnome-terminal -t "Topology Map" -x bash -c 'roslaunch ~/Launch/TopologyMap.launch'
sleep 5

# Control Server
gnome-terminal -t "Control Server" -x bash -c 'roslaunch ~/Launch/ControlServer.launch'

