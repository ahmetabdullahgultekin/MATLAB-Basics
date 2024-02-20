% Ahmet Abdullah GÜLTEKİN
% 150121025

% Initialize the theta with the desired values
theta = 0 : pi/32 : 8*pi;

% Define formula
r = exp(sin(theta)) - 2*cos(4*theta) - (sin((2*theta - pi)/24)).^5;

% Create polar coordinate and arrange line style
polar(theta, r, '--r')

% Add title and labels
title('Butterfly in Polar')
ylabel('r')
xlabel('\theta')