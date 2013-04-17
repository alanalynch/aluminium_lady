function y = bi2demod(x)

y = sum(x .* 2.^[0:(length(x)-1)]);

% dsum = 0;
% dv = [1 2 4 8 16];
% for i = 1:P
%     if B(i) == 1
%         dsum = dsum + dv(i);
%     end
% end
% result = dsum;
