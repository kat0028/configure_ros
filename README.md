# Configure ROS
This script can be used to easily change the sourced ROS version from command line so that any new terminal windows will source the new ROS version selected.

---
## Setup

The setup.sh script will setup all required files on your machine. To run this script run the following commands in the terminal 
```
cd configure_ros
./setup.sh
```
This will place a bash script containing the functions required for automatically sourcing ROS versions in ~/.scripts/.

- The setup script might not work correctly if it is not run inside of configure_ros/

---
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

---
## Removal
The scripts installed with this package can be removed by running the following commands

```
cd configure_ros
./remove.sh
```