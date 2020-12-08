figure;

t = linspace(0, 2*pi, 1000);
x = 3*cos(t);
y = 3*sin(t);

for k=1:length(t)
    clf;
    t_k = t(k);
    x_k = x(k);
    y_k = y(k);
    plot(x_k, y_k, 'go', 'LineWidth', 3, 'MarkerSize', 15);
    axis([-5 5 -5 5]);
    hold on;
    grid on;

    pause(0.002);
end