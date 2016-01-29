% Evaluate erf(x) by Tres Hermanos integration technique

function y = smart_erf(z, N)

y = thint(@gaussian, 0, z, N);