function xc = NewtonNonLinearRoot(f,x,x0,epsilon1,epsilon2,n)
%Use Newton's Method to find the roots of the input nonlinear functions
%Input: f is a nonlinear function vectors (symbolic functions)
%       x contains the variables
%       x0 contains the initial values
%       epsilon1 is the minimum value of norm(x(i+1)-xi,2) for the program to stop;
%       epsilon2 is the minimum value of abs(f(xi) for the program to stop;
%       n is the maximum number of iterations
%Output: xc is the root
x0=x0(:);
x=x(:);
J=jacobian(f,x);
J0=double(subs(J,x,x0));
f0=double(subs(f,x,x0));
delta=-J0\f0;
x1=x0+delta;
t=1;
while(norm(x1-x0,2)>epsilon1||norm(f0,2)>epsilon2)
    x0=x1;
    J0=double(subs(J,x,x0));
    f0=double(subs(f,x,x0));
    delta=-J0\f0;
    x1=x0+delta;    
    t=t+1;
    if t>n break;
end
xc=x1;
end

