function y = de2bimod(x,n)
    xtemp = x;
    dv = [128 64 32 16 8 4 2 1];
    out = zeros(1,n);
    for i = 1:n
        if xtemp>=dv(i)
            out((n+1)-i) = 1;
            xtemp = xtemp - dv(i);
        end
    end
y = out;
end