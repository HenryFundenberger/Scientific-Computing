A = [2 1; -1 1];
b = [0;3];

linsolve(A,x);
A\x;
inv(A)*b;

% These all calculate to x = -1 and y = 2

%b.)

for i=1:300
    id=eye(i);
    mat=rand(i);
    tic;
    A/b;
    x(i,1)=toc;
    tic;
    inv(A)*b;
    x(i,2)=toc;
    tic;
    
    x(i,3)=toc;
 
end

plot(1000*x)
title('Inversion Time vs Matrix Dimension')
legend('1/A', 'inv(A)')
xlabel('Matrix Dimension')
ylabel('Time (milliseconds)')
text(20, max(x(:,2))*700,['1/A total = ', num2str(sum(x(:,1))), ' seconds'])
text(20, max(x(:,2))*400,['inv(A) total = ', num2str(sum(x(:,2))), ' seconds'])