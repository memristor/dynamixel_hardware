ros2 control switch_controllers --start joint_state_broadcaster --start joint_trajectory_controller --stop velocity_controller
ros2 action send_goal /joint_trajectory_controller/follow_joint_trajectory control_msgs/action/FollowJointTrajectory -f "{
  trajectory: {
    joint_names: [joint1],
    points: [
      { positions: [1], time_from_start: { sec: 2 } },
      { positions: [-1], time_from_start: { sec: 4 } },
      { positions: [0], time_from_start: { sec: 6 } }
    ]
  }
}"
