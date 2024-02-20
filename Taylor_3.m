% Ahmet Abdullah GÜLTEKİN
% 150121025

% Determine the last power of x and assign to 'P'
P = 15;

% Initialize 'x' the function value of sin(x) 
x = 0.9;

% Generate powers of all x values in formula until 'P'
set_of_terms = 1 : 2 : P;

% Create factorials according to powers of x 
factorials = factorial(set_of_terms);

% Compute and type the whole formula
% Find powers
powers_of_x = x.^set_of_terms;
% Determine signs of 'x'
signs =(-1).^((set_of_terms-1) / 2); %[1,-1,1,-1,1,-1,1,-1] for eight terms
% Type as positive
series = powers_of_x ./ factorials;
% Complete the formula by multiplying by mines
formula = signs .* series;
% Add them up
last_sin = cumsum(formula);
% Lastly plot it
% plot (last_sin);

% Initialize formula
true = 1.0;
f_error = (true - last_sin) / true * 100;

% Plot the entire job
plot(set_of_terms, ((f_error)));

% Add labels and title
ylabel('percent relative error')
xlabel('number of terms')
title('percent relative error versus number of terms')