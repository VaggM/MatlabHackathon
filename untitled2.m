jo.forehand = load('forehand2.mat');
jo.backhand = load('backhand.mat');
jo.run_walk = load('run_walk.mat');
jo.map = load('map.mat');

format long

ymin = min(jo.map.Position.latitude)
ymax = max(jo.map.Position.latitude)

xmin = min(jo.map.Position.longitude)
xmax = max(jo.map.Position.longitude)

function [x, y] = find_position(lat, lon, ymin, ymax, xmin, xmax)

    area_y = linspace(ymin,ymax,100);
    
    y = find(lat >= area_y(1:end-1) & y < area_y(2:end));
    
    % Edge case: if y == ymax, assign to the last bin
    if isempty(index) && y == ymax
        y = 100;
    end
    
    area_x = linspace(xmin,xmax,100);
        
    x = find(lon >= area_x(1:end-1) & lon < area_x(2:end));
    
    % Edge case: if y == ymax, assign to the last bin
    if isempty(index) && y == ymax
        x = 100;
    end

end


