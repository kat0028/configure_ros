#!/bin/bash
location=$(pwd)

if [ -e ~/.scripts/ ]; then
    echo install location ~/.scripts exists
else
    echo creating install location ~/.scripts
    mkdir ~/.scripts
fi

if [ -f ~/.scripts/.source_ros.sh ]; then 
    echo script "source_ros.sh" already exists 
    echo overwritting "source_ros.sh"
else   
    echo installing "source_ros.sh"
    if [ -f source_ros.sh ]; then 
        echo script source_ros.sh found
        cp $location/source_ros.sh ~/.scripts/.source_ros.sh
        echo file ~/.scripts/.source_ros.sh created

        echo "source ~/.scripts/.source_ros.sh" >> ~/.bashrc
        echo adding script to bashrc
        source ~/.bashrc
        echo configure_ros installed
    else
        echo ERROR: file not found.
    fi
fi
