%invspeed.m
%invspeed.m calculates the time to perform two types of matrix inversions;
%it then plots the time versus matrix dimension.

for i=1:300
    id=eye(i);
    mat=rand(i);
    tic;
    id/mat;
    x(i,1)=toc;
    tic;
    inv(mat);
    x(i,2)=toc;
end

plot(1000*x)
title('Inversion Time vs Matrix Dimension')
legend('1/A', 'inv(A)')
xlabel('Matrix Dimension')
ylabel('Time (milliseconds)')
text(20, max(x(:,2))*700,['1/A total = ', num2str(sum(x(:,1))), ' seconds'])
text(20, max(x(:,2))*400,['inv(A) total = ', num2str(sum(x(:,2))), ' seconds'])
