Header header

#The Joint States:
#Contains joint names
#Effort vector contains the current on each joint
sensor_msgs/JointState joint_states

#The pressure on the tactile sensor array per link
vigir_grasp_msgs/LinkState link_states

#The status of each joint:
# 0 - normal
# 1 - stopped due collision
# 2 - ...define as needed..
uint8[] joint_status

#The status of the hand:
uint8 NORMAL           = 0
uint8 UNKNOWN_ERROR    = 1
uint8 CONNECTION_ERROR = 2
uint8 hand_status

