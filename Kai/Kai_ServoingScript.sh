#!/bin/bash

# Meteor Controller
gnome-terminal -t "Meteor Controller" -x bash -c 'roslaunch ~/Launch/Meteor.launch'
sleep 1

# Realsense 
gnome-terminal -t "Realsense" -x bash -c 'roslaunch ~/Launch/RealSense_1xD435_VisualServoing.launch'
sleep 1


# Realsense 
gnome-terminal -t "Realsense" -x bash -c 'roslaunch ~/Launch/Kai_RealSense_1xD435_VisualServoing.launch'
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

# Control Server
gnome-terminal -t "Control Server" -x bash -c 'roslaunch ~/Launch/ControlServer.launch'