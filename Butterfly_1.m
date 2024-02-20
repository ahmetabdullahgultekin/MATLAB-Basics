% Ahmet Abdullah GÜLTEKİN
% 150121025

% Initialize 't' with given values
t = 0 : 1/16 : 100;

% Initialize x and y values according to formula
x = sin(t).*(exp(cos(t)) - 2*cos(4*t) - (sin(t/12)).^5);
y = cos(t).*(exp(cos(t)) - 2*cos(4*t) - (sin(t/12)).^5);

% Plot and place the plot 1
subplot(2, 1, 1)
% Pass the values of axis and select the line type of 'y' as dotted line
plot(t,x, t,y, ':')

% Show legend of axis
legend('x versus t', 'y versus t')

% Add title and labels
title('x and y versus t')
xlabel('t')
ylabel('x and y')

% Show second plot and place it
subplot(2,1,2)
plot(x,y)
% Choose axis type as square
axis square

% Add titles and labels
title('y versus x')
xlabel('x')
ylabel('y')