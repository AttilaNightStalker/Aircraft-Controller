function [ ] = move(p1, p2, d1, d2, window_size)

frames = 50;

pos1_x = linspace(p1(1), p1(1) + d1(1), frames);
pos1_y = linspace(p1(2), p1(2) + d1(2), frames);

pos2_x = linspace(p2(1), p2(1) + d2(1), frames);
pos2_y = linspace(p2(2), p2(2) + d2(2), frames);

for t=1:frames
    clf;
    fx1 = pos1_x(t);
    fy1 = pos1_y(t);
    
    fx2 = pos2_x(t);
    fy2 = pos2_y(t);
    
    plot(fx1, fy1, 'gs', 'LineWidth', 3, 'MarkerSize', 15);
    hold on;
    plot(fx2, fy2, 'rs', 'LineWidth', 3, 'MarkerSize', 15);
    hold on;
    axis(window_size);
    grid on;
    grid minor;
    
    pause(0.01);
end
