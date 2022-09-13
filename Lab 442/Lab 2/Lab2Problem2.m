A = [2 1; -1 1];
b = [0;3];

%linsolve(A,b);
%A\b;
%inv(A)*b;

% These all calculate to x = -1 and y = 2

%b.)

for i=1:1000
    id=eye(i);
    mat=rand(i);
    tic;
    A\b;
    x(i,1)=toc;
    tic;
    inv(A)*b;
    x(i,2)=toc;
    tic;
    linsolve(A,b);
    x(i,3)=toc;
 
end

plot(1000*x)
title('Inversion Time vs Matrix Dimension')
legend('A/b', 'inv(A)*b', 'linsolve(A,b)')
xlabel('Matrix Dimension')
ylabel('Time (milliseconds)')
text(20, max(x(:,2))*700,['A\b total = ', num2str(sum(x(:,1))), ' seconds'])
text(20, max(x(:,2))*400,['inv(A)*b total = ', num2str(sum(x(:,2))), ' seconds'])
text(20, max(x(:,2))*100,['linsolve(A,b) total = ', num2str(sum(x(:,3))), ' seconds'])