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

# SLAM
gnome-terminal -t "Localization" -x bash -c 'roslaunch CeilingSLAMwith2xD455.launch localization:=true'
sleep 1
