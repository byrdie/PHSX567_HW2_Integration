% Extended Tres Hermanos integrator.
% A 3rd order open method, with uniformly spaced abcissas.
% 2009-Feb-01  C. Kankelborg

function result = thint(integrand, a, b, N)

dx = (b-a)/N; % step size for N intervals
x = a + ((1:N)-0.5)*dx; % abcissas (like midpoint method)
vals = integrand(x); % integrand must be able to accept an array of x's.

% Apply coefficient weights.
vals(1:3) = vals(1:3) .* [26/24, 21/24, 25/24];
vals(N-2:N) = vals(N-2:N) .* [25/24, 21/24, 26/24];

result = sum(vals)*dx;