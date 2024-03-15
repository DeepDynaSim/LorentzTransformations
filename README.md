# LorentzTransformations

photonclock_stationaryframe.m

Overview
The script creates an animation of a photon (represented as a red dot) bouncing back and forth between two stationary mirrors. The parameters for the simulation—such as the distance between mirrors, the photon's speed, and the time step for the animation—are customizable. The animation is saved as an MP4 video file.

Parameters
mirror_distance: The distance between the two mirrors.
photon_speed: The speed of the photon. This is used for visualization purposes and does not reflect the actual speed of light.
dt: The time step for the animation, determining how often the photon's position is updated.
bounce_time: The time it takes for the photon to complete one bounce between the mirrors, calculated based on the mirror_distance and photon_speed.
totalTime: The total time for which the animation runs, set to allow for two complete bounces in this example.
frames: The total number of frames in the animation, derived from totalTime and dt.
Video Recording Setup
Initializes a VideoWriter object to create an MP4 file, specifying the file path and format.
Sets the frame rate based on the inverse of the time step dt.
Animation Preparation
Initializes a figure window for the animation with specified x and y limits.
Draws stationary mirrors as vertical lines on the plot.
Photon Simulation
Initializes the photon's position at the left mirror and sets its initial direction to the right.
In each iteration of the animation loop, updates the photon's position based on its speed and direction.
Checks for collisions with the mirrors to reverse the photon's direction.
Clears the previous frame's drawing and redraws the mirrors and photon in their new positions.
Captures each frame and writes it to the video file.
Finalization
Closes the video file to finalize it.
Displays the path to the saved video file in the console.
Notes for GitHub Repository Documentation
Customization: Users can adjust the parameters at the beginning of the script to change the distance between mirrors, the speed of the photon, and the duration of the animation.
Dependencies: This script requires MATLAB's built-in VideoWriter class, available in most recent versions of MATLAB.
Output: The script outputs an MP4 video file to the specified path. Users need to ensure the specified directory exists and is writable.
Visualization: This script is intended for educational and visualization purposes, demonstrating concepts such as reflection and the principle of light's constant speed in a vacuum (though the speed used in the simulation is not to scale).

photonclock_movingframe.m

Overview
The script creates an animation showing a photon (depicted as a red dot) bouncing horizontally between two mirrors while the mirrors themselves move vertically. This scenario introduces an additional layer of complexity compared to stationary mirrors, illustrating how the photon's path changes in a dynamic environment. The animation parameters are customizable, and the resulting animation is saved as an MP4 video file.

Parameters
mirror_distance: The horizontal distance between the two mirrors.
photon_speed: The horizontal speed of the photon, used for visualization purposes.
mirror_speed: The vertical speed at which both mirrors move.
dt: The time step for the animation, determining the frequency of updates to the photon's position.
totalTime: The total duration of the animation.
frames: The total number of frames in the animation, calculated from totalTime and dt.
Video Recording Setup
Initializes a VideoWriter object to create an MP4 file, specifying the file path and the format.
Sets the frame rate based on the inverse of the time step dt.
Animation Preparation
Initializes a figure window for the animation with specified x and y limits, adjusting the y limits to accommodate the vertical movement of the mirrors over time.
Sets up the title and holds the plot for subsequent drawing commands.
Initial Positions and Direction
Sets the initial horizontal positions of the left and right mirrors.
Initializes the vertical position of the mirrors and the photon's starting position at the bottom left mirror.
Sets the photon's initial direction to the right.
Animation Loop
Iteratively updates the photon's horizontal position and the vertical position of both the photon and the mirrors.
Checks for the photon's horizontal collision with the mirrors to reverse its direction.
Clears the previous frame's drawing and redraws the mirrors and photon in their new positions.
Captures each frame and writes it to the video file.
Finalization
Closes the video file to finalize it.
Outputs the path to the saved video file in the console.
Notes for GitHub Repository Documentation
Customization: Users can modify the initial parameters to change the dynamics of the photon's movement and the mirrors' speed.
Dependencies: This script relies on MATLAB's VideoWriter class, which is standard in most MATLAB installations.
Output: The script generates an MP4 video file at the specified path. Users should ensure the specified directory exists and has write permissions.
Visualization Purpose: The script serves as an educational tool to visualize complex dynamics in a simplified scenario, not to scale with real physical phenomena.

https://github.com/DeepDynaSim/LorentzTransformations/assets/35817872/6db54596-7546-4b4f-9227-a2992b732396

https://github.com/DeepDynaSim/LorentzTransformations/assets/35817872/1d032224-5a52-4fb7-9525-28f36d1f2bd6
