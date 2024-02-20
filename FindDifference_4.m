% Ahmet Abdullah GÜLTEKİN
% 150121025

% Define function also pass function and given range
function [diff] = FindDifference_4(f1, t1, t2)

t = linspace(t1, t2, 10000); % Pass 10000 for smooth graph

% Function Instances
% f1 = 8 * exp(-0.25*t).*sin(t - 2);
% f2 = exp(4 * x).*sin(1 ./ x);
% f3 = humps;

% Plot passed function
plot(t, f1(t));
% Add grid feature 
grid on;

% Find out minimum amd maximum value and calculate difference
minVal = min(f1(t));
maxVal = max(f1(t));
diff = maxVal - minVal;

% Pop the message of values up
message = sprintf(['Min = %f\nMax = %f' ...
    '\nDifference = %f\n'], minVal, maxVal, diff);
uiwait(helpdlg(message));

% Examples
% [diff] = FindDifference_4(@(t) 8 * exp(-0.25*t).*sin(t - 2), 0, 6*pi)
% [diff] = FindDifference_4(@(x) exp(4 * x).*sin(1 ./ x), 0.01, 2)
% [diff] = FindDifference_4(@humps, 0, 2)

end