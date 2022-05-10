function [y,car,t] = amp_mod(k,a1,f1,a2,f2)
if f1>f2  
    t = 0:(1/(100*f1)):(30/f1);
    car = a1*cos(2*pi*f1*t);
    y = a1*((1 + k*a2*cos(2*pi*f2*t)).*cos(2*pi*f1*t));
else
    t = 0:(1/(100*f2)):(30/f2);
    car = a2*cos(2*pi*f2*t);
    y = a2*((1 + k*a1*cos(2*pi*f1*t)).*cos(2*pi*f2*t));
end
end