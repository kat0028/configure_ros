#!/bin/bash

function rm_saved_source ()
{
    rm ~/Setup/configure_ros/saved_source.txt
}

function init_source ()
{
    if [ -f ~/Setup/configure_ros/saved_source.txt ]; then 
        saved_source=$(cat ~/Setup/configure_ros/saved_source.txt)
        $saved_source
    fi
}

function set_ros_version ()
{
    if [ -f ~/Setup/configure_ros/saved_source.txt ]; then
        rm_saved_source
    fi 
    echo enter ros version
    read ros_version
    echo "source /opt/ros/"$ros_version"/setup.bash" >> ~/Setup/configure_ros/saved_source.txt 
    init_source
}

function prs ()
{
    if [ -f ~/Setup/configure_ros/saved_source.txt ]; then 
        saved_source=$(cat ~/Setup/configure_ros/saved_source.txt)
        echo $saved_source
    else
        echo no current ros source
    fi    
}

init_source