% Answer questions 2-5 posed in the homework statement

function result = solution2(z)

% Question 2: Evaluate erf(z)
result = smart_erf(z, 10.^5);

% Question 3: Plot the rate of convergence
power = 10.^(1:7);
for i = 1:7	% loop through different number of step sizes
	err(i) = abs(smart_erf(z, power(i)) - erf(z));
end
loglog(power, err);
title('Relative error of erf(z) vs number of steps');
ylabel('Relative Error');
xlabel('Number of steps');

% Question 4: Accuracy of erf(1)
format long
printf('Approximate value of erf(1): %.16f \n', smart_erf(1, 10.^6));
printf('Real value of erf(1): 	     0.842700792949714869341220635 \n');

% Question 5: plot approximate erf vs actual erf

% I had to loop here because I was getting an error when I tried to vectorize it
for i = 1:20;
	x(i) = (i .- 1) ./ 5 .- 2;
	y_a(i) = smart_erf(x(i), 10.^6);
	y_r(i) = erf(x(i));
end

figure(2);
hold on;
plot(x, y_a, 'b');
plot(x, y_r, 'r');
title('Approximate erf(x) vs actual erf(x)')
xlabel('x')
ylabel('erf(x)')
legend('Approximate erf(x)', 'Actual erf(x)')