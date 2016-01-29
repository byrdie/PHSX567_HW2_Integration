% Returns the value of a Gaussian

function y = gaussian(x)
y = 2 ./ sqrt(pi) .* exp(-x.^2);