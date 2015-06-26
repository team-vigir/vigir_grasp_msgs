# Florian grasp state message
#
# This message is used for both commands from OCS and feedback from grasp controller.
#
# Grasp state is a bit package value that combines the mode and current finite state machine state
#  grasp_state = (grasp_control_mode <<4) + grasp_control_state
# Where the grasp_control mode/states are defined below:
#  See grasp_control/grasp_control.h
#
# GraspControlModes
uint8 GRASP_MODE_NONE     = 0
uint8 TEMPLATE_GRASP_MODE = 1
uint8 MANUAL_GRASP_MODE   = 2
#
# GraspStates
uint8 OPEN       = 0
uint8 CLOSE      = 1
uint8 GRASP_ID   = 2
uint8 PERCENTAGE = 3
#
#  The grip value combines figure closure and grip strength
#    0-100  specifies finger closure percentage
#  101-200  specifies grip strength as a feedforward effort
#             under assumption that FF effort = 0 if fingers are not fully closed
#
# The finger effort value sets an independent effort value for each finger
# in the range [-50, 50]
#
Header                 header
std_msgs/UInt8         grasp_state
std_msgs/UInt8         grip
std_msgs/Int8[]        finger_effort
moveit_msgs/Grasp      grasp
