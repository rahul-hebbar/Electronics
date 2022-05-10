clear;
clc;

format short;

%a = [0.8147 0.0975 0.1576; 0.9058 0.2785 0.9706; 0.1270 0.5469 0.9572;
%0.9134 0.9575 0.4854; 0.6324 0.9649 0.8003];

%a = [0.8147 0.0975 0.1576; 0.9058 0.2785 0.9706; 0.1270 0.5469 0.9572];

a = [1 5 9; 2 6 10; 3 -7 11];

r = a;
siz = size(r);

if (isequal(siz,[1 1]))
    fprintf("No QR Possible \n");
else
    if (siz(1) <= siz(2))
        lower_z = (siz(1)*siz(1) - siz(1))/2; % total zeros to be made
    else
        lower_z = (siz(2)^2 - siz(2))/2 + (siz(1) - siz(2))*siz(2);
    end
    
    %fprintf("size of matrix %g \n",siz);
    %fprintf("number of zeros %i \n",lower_z);
    
    q = eye(siz(1));
    ele = [siz(1) 1];
    
    for fg = 0:1:lower_z+1
        if (ele(1) ~= ele(2))
            iden = eye(siz(1));
            e1 = r(ele(1)-1,ele(2));
            e2 = r(ele(1),ele(2));
            de = (e1^2 + e2^2)^0.5;
            c = e1/de;
            s = -1*e2/de;
            if ((e1 < 0 && e2 > 0) || (e1 < 0 && e2 < 0))
                q_2 = [abs(c) s; -s abs(c)];
            else
                q_2 = [c -s; s c];
            end
            iden(ele(1)-1:ele(1),ele(1)-1:ele(1)) = q_2;
            r = iden*r;
            q = iden*q;
            ele(1) = ele(1)-1;
        else
            ele = [siz(1) ele(2)+1];
        end
    end
    disp(r);
    disp(q.');
end