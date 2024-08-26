#!/bin/bash

# Meteor Controller
gnome-terminal -t "Meteor Controller" -x bash -c 'roslaunch ~/Launch/Meteor.launch'
sleep 1

# ZED2 
gnome-terminal -t "ZED2" -x bash -c 'roslaunch ~/Launch/ZED2.launch'
sleep 3

# SLAM
gnome-terminal -t "SLAM" -x bash -c 'roslaunch VINSRGBDFAST_zed2_vio.launch'
