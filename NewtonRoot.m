function xc = NewtonRoot(f,fdot,x0,TOL,n)
%Use Newton's Method to find the root
%Input: f is the target function
%       fdot is the derivative function of f
%       x0 is the starting point
%       TOL is the tolerance
%       n is the maximum number of iterations
%Output: xc is the root

x1=x0-f(x0)/fdot(x0);
t=1;
while(abs(x1-x0)>TOL&&t<=n)
    x0=x1;
    x1=x0-f(x0)/fdot(x0);   
    fprintf('Iteration No. %i:\n x0= %9.8f , x1=%9.8f \n',t,x0,x1);
    t=t+1;
end
if t>n 
    % t is used to stop the program when the iteration is over n times.
    fprintf('The iteration process is very likely to be divergent.\n Please choose another initial x again.\n');
    xc=[];
else xc=x1;
end
end

