% Define initial matrix (10x10) with values 0 to 3
data = zeros(10);  % Example random data

% Define custom colormap: 0 = white, 1 = black, 2 = yellow, 3 = green
cmap = [1 1 1;      % white
        0 0 0;      % black
        1 1 0;      % yellow
        0 1 0];     % green

% Create the figure and plot the initial matrix
figure;
h = imagesc(data);
colormap(cmap);
clim([-0.5 3.5]);   % Ensures values map correctly to colors
axis equal tight;
colorbar off;

% Example loop to update the matrix like a video
for k = 1:10
    % Update data here (you can modify this with your own logic)
    data(k) = 1;  % Replace with your update logic
    set(h, 'CData', data);        % Update the image
    pause(1);                     % Wait 1 second
    data(k) = 0;
end
