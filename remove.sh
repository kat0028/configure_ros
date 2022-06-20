#!/bin/bash

sed -i '/source ~\/.scripts\/.source_ros.sh/d' ~/.bashrc
rm ~/.scripts/.source_ros.sh
rm ~/.scripts/.saved_source.txt
