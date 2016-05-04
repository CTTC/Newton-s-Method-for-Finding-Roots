clear all;clc;
f=@(x)4*x.^3-8*x.^2+3*x-10;
x=0:0.01:3;
plot(x,f(x))
title('f(x)=4*x^3-8*x^2+3*x-10');
grid on;
fdot=@(x)12*x.^2-16*x+3;
TOL=0.5e-8;
x0=2.5;
xc1=NewtonRoot(f,fdot,x0,TOL,20);
xc2=roots([4 -8 3 -10]);
fprintf('The root found by using Newton''s Method is xc=%9.8f\n',xc1);
disp('The root found by using roots function is');
disp(['xc=' mat2str(xc2)]);



