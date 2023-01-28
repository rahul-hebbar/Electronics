function [d1,d2] = nfnc(s1,s2,s3,s4)
b = s1+s4;
c = s1*s4-s2*s3;
d1 = (-b+(b*b-4*c)^0.5)*0.5;
d2 = (-b-(b*b-4*c)^0.5)*0.5;
end

