clear all;clc;
ezplot('x*cos(y)+y*cos(x)-0.9')
hold on;
h=ezplot('x*sin(y)+y*sin(x)-0.1');
set(h,'Color','r');
title('Function plots of f(x,y)=x*cos(y)+y*cos(x)-0.9 and g(x,y)=x*sin(y)+y*sin(x)-0.1')
legend('x*cos(y)+y*cos(x)=0.9','x*sin(y)+y*sin(x)=0.1');
syms x1 x2 
f=[x1*cos(x2)+x2*cos(x1)-0.9;x1*sin(x2)+x2*sin(x1)-0.1];
x=[x1 x2];
epsilon1=0.5e-8;
epsilon2=0.5e-8;
x0=[-1 1];
n=40;
xc1=NewtonNonLinearRoot(f,x,x0,epsilon1,epsilon2,n);
disp(['The roots found by using Newton''s Method are xc=' mat2str(xc1)]);
[xc2,fval,exitflag]=fsolve(@myfun,x0);
disp(['The roots found by using fsolve function are xc=' mat2str(xc2)]);
disp(['fval=' mat2str(fval)]);
disp(['exitflag=' num2str(exitflag)]);

