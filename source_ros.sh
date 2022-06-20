#!/bin/bash

function rm_saved_source ()
{
    rm ~/.scripts/saved_source.txt
}

function init_source ()
{
    if [ -f ~/.scripts/saved_source.txt ]; then 
        saved_source=$(cat ~/.scripts/saved_source.txt)
        $saved_source
    fi
}

function set_ros_version ()
{
    if [ -f ~/.scripts/saved_source.txt ]; then
        rm_saved_source
    fi 
    echo enter ros version
    read ros_version
    echo "source /opt/ros/"$ros_version"/setup.bash" >> ~/.scripts/saved_source.txt 
    init_source
}

function prs ()
{
    if [ -f ~/.scripts/saved_source.txt ]; then 
        saved_source=$(cat ~/.scripts/saved_source.txt)
        echo $saved_source
    else
        echo no current ros source
    fi    
}

init_source
