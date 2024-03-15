% Parameters for the animation
mirror_distance = 20; % Distance between mirrors, horizontally
photon_speed = 5; % Horizontal speed of the photon for visualization
mirror_speed = 1; % Vertical speed of the mirrors
dt = 0.05; % Time step for the animation
totalTime = 20; % Total time for the animation
frames = totalTime / dt;

% Prepare VideoWriter
v = VideoWriter('C:\Users\MSI-\Drive’ım\Zaman Yolcusunun Usu\GitHub/photon_bounces_moving_mirros.mp4', 'MPEG-4');
v.FrameRate = 1 / dt;
open(v);

% Initialize figure
fig = figure;
xlim([-mirror_distance/2 - 5, mirror_distance/2 + 5]);
ylim([0, mirror_speed * totalTime]); % Adjust Y-limits to follow mirror movement
hold on;
title('Bouncing Photon Between Vertically Moving Mirrors');

% Initial positions and direction
left_mirror_pos = -mirror_distance / 2;
right_mirror_pos = mirror_distance / 2;
mirror_vertical_pos = 0; % Starting vertical position of the mirrors
photon_pos = [left_mirror_pos, 0]; % Photon starts from the left mirror, at the bottom
photon_dir = 1; % 1: moving right, -1: moving left

% Animation loop
for frame = 1:frames
    % Update positions
    photon_pos(1) = photon_pos(1) + photon_dir * photon_speed * dt; % Horizontal update
    mirror_vertical_pos = mirror_vertical_pos + mirror_speed * dt; % Vertical update of mirrors
    photon_pos(2) = mirror_vertical_pos; % Photon follows the mirrors vertically
    
    % Check for horizontal collision with mirrors and reverse direction
    if photon_pos(1) <= left_mirror_pos || photon_pos(1) >= right_mirror_pos
        photon_dir = -photon_dir;
    end
    
    % Clear the figure and redraw
    cla;
    plot([left_mirror_pos, left_mirror_pos], [mirror_vertical_pos-1, mirror_vertical_pos+1], 'k-', 'LineWidth', 2);
    plot([right_mirror_pos, right_mirror_pos], [mirror_vertical_pos-1, mirror_vertical_pos+1], 'k-', 'LineWidth', 2);
    plot(photon_pos(1), photon_pos(2), 'ro', 'MarkerFaceColor', 'r');
    drawnow;
    
    % Write frame to video
    frame = getframe(fig);
    writeVideo(v, frame);
end

% Close the video file
close(v);

% Display the path to the saved video file
disp('C:\Users\MSI-\Drive’ım\Zaman Yolcusunun Usu\GitHub/photon_bounces_moving_mirros.mp4');
