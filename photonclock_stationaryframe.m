% Parameters
mirror_distance = 20; % Distance between mirrors
photon_speed = 5; % Speed of the photon for visualization
dt = 0.05; % Time step for the animation
bounce_time = (2 * mirror_distance / photon_speed); % Time for one complete bounce
totalTime = 2 * bounce_time; % Time for two bounces
frames = totalTime / dt;

% Prepare VideoWriter
v = VideoWriter('C:\Users\MSI-\Drive’ım\Zaman Yolcusunun Usu\GitHub/photon_bounces_stationary_mirros.mp4', 'MPEG-4');
v.FrameRate = 1 / dt;
open(v);

% Initialize figure
fig = figure;
xlim([-mirror_distance/2 - 5, mirror_distance/2 + 5]);
ylim([-1, 1]);
hold on;
title('Bouncing Photon Between Stationary Mirrors');

% Mirrors' positions
left_mirror_pos = -mirror_distance / 2;
right_mirror_pos = mirror_distance / 2;

% Initialize photon position and direction
photon_pos = left_mirror_pos; % Start from the left mirror
photon_dir = 1; % 1: moving right, -1: moving left

% Animation loop
for frame = 1:frames
    % Update photon position
    photon_pos = photon_pos + photon_dir * photon_speed * dt;
    
    % Check for collision with mirrors and reverse direction
    if photon_pos <= left_mirror_pos || photon_pos >= right_mirror_pos
        photon_dir = -photon_dir;
    end
    
    % Clear the figure and redraw
    cla;
    plot([left_mirror_pos, left_mirror_pos], [-1, 1], 'k-', 'LineWidth', 2);
    plot([right_mirror_pos, right_mirror_pos], [-1, 1], 'k-', 'LineWidth', 2);
    plot(photon_pos, 0, 'ro', 'MarkerFaceColor', 'r');
    drawnow;
    
    % Write frame to video
    frame = getframe(fig);
    writeVideo(v, frame);
end

% Close the video file
close(v);

% Display the path to the saved video file
disp('C:\Users\MSI-\Drive’ım\Zaman Yolcusunun Usu\GitHub/photon_bounces_stationary_mirros.mp4');