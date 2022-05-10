clear;
clc;

N=3;
temp_op = zeros(N,N);
op = zeros(N,N);
temp = zeros(1,N);
inp = [1 5 9; 2 6 10; 3 -7 11];
%inp = [0.8147 0.0975 0.1576 0 0;
%       0.9058 0.2785 0.9706 0 0; 
%       0.1270 0.5469 0.9572 0 0;
%       0.9134 0.9575 0.4854 0 0;
%       0.6324 0.9649 0.8003 0 0];
%inp = [1 2 3 0;
%       4 5 6 0;
%       3 2 1 0; 
%       6 5 4 0];
for i=size(inp,1):-1:1
    % LOGIC STARTS
    temp = inp(i,:);
    temp_op = op;
    for j=1:N-1
        x1 = temp(j);
        x2 = temp_op(j,j);
        %fprintf('temp = %d %d %d \n',temp);
        %fprintf('x1 = %d, x2 = %d \n',x1,x2);
        if (x1 ~= 0 || x2 ~= 0)
            d = (x1^2+x2^2)^(-0.5);
            if (x1 < 0)
                co = -1*x1*d;
                so = -1*x2*d;
            else
                co = x1*d;
                so = x2*d;
            end
            %fprintf('c = %d, s = %d \n\n',co,so);
            if ( j == N-1 )
                for k=j:N
                    op(j,k) = co*temp(k) + so*temp_op(j,k);
                    op(j+1,k) = -so*temp(k) + co*temp_op(j,k);
                end
            else
                for k=j:N
                    op(j,k) = co*temp(k) + so*temp_op(j,k);
                    temp(k) = -so*temp(k) + co*temp_op(j,k);
                end
            end
        end
    end
    disp(op);
    % LOGIC ENDS
end

[a,r] = qr(inp);
disp(r);