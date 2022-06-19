# Configure ROS
This script can be used to easily change the sourced ROS version from command line so that any new terminal windows will source the new ROS version selected.

Currently the script is set to be placed on the path "~/Setup/". If this is changed the paths inside of the script must also be changed.

## Setup
---
Run this line to add the script to your bashrc 
```
echo "source ~/Setup/configure_ros/source_ros.sh" >> ~/.bashrc
```

Then just source the .bashrc
``` 
source ~/.bashrc
```

## Running the Script
There are several commands that are added in the script but only two of them are of interest. The first command is used to be able to set or change the sourced version of ROS. 
```
set_ros_version
```
This command will prompt you to enter the version of ROS you want to source. Example replies are:
```
foxy
```
```
noetic
```
The second command that is added in this script is "prs" which is short for print ros source. This shows which version of ROS is currently being sourced.  
- Note: This commmand does not source anything and is only to be used as a way to check what is being run with the .bashrc instructions on terminal startup.
```
prs
```
Example outputs for this command are:

ROS2 foxy:
```
source /opt/ros/foxy/setup.bash
```

ROS noetic:
```
source /opt/ros/noetic.bash
```

## Removal
The scripts can be removed by running the two following commands:

Remove the script from the .bashrc:
```
sed -i '/source ~\/Setup\/configure_ros\/source_ros.sh/d' ~/.bashrc
```
Remove the configure_ros directory from your machine:
```
rm -rf ~/Setup/configure_ros/
```