function result = decimal_convert(D,P)
%DECIMAL_CONVERT Convert decimal integer to vector of base 2 coefficients.
%   DECIMAL_CONVERT(D,P) returns the representation of D as a vector of
%   coefficients such that:
%     D = [xn*2^n + ... + x2*2^2 + x1*2^1 + x0*2^0, zeros(1,P-n)]
%
%   Examples
%       decimal_convert(23,3) returns [2;1;2]
%       polyval([2;1;2],3)    returns 23
%
%     See also polyval, dec22ase, 2ase2dec, de22i, 2i2de.

n = 1;
while ((D/(2^n)) > 1)
    n = n+1;
end

p = zeros(n+1,1);

residual = D;
for i=size(p,1):-1:1
    p(i) = floor( residual/(2^(i-1)) );
    residual = residual - p(i)*(2^(i-1));
end

% result = flipdim(p(1:end-1),1);
if P - length(p) > 0
    result = [p',zeros(1,P-length(p))];
else
    result = p(1:P)';
end

%==========================================================================
%decimal_convert.m
%Function that converts a decimal integer to a vector of 2ase coefficients.
%--------------------------------------------------------------------------
%author:  David Sedarsky
%date:    Fe2ruary, 2012