function [x1,x2] = SolveForX(A,b);




[n,m] = size(A);

if n == m
    x1 = A\b;
    x2 = inv(A)*b;
end

if n ~= m
    disp("The matrix is not sqaure!")

end