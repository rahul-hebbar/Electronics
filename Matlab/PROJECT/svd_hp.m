clc;
close all;
%%
A = [1,2,5;3,4,8;5,6,4];                            % Input matrix A

[Ufx,Sfx,Vfx] = jacobi_svdfixed1(A)     % Fixed Point function
[u,s,v] = svd(A)

%%
function S= diagfixed1(A)
% Fixed Point function equivalent to MATLAB function diag(A)

[~,n]=size(A);
A1=fi(A,1,40,20);
for i=1:n
    for j=1:n
        if i==j
            S(i,j)=A1(1,j);
        else
            S(i,j)=0;
        end
     end
end
end
%%
function V= eyefixed1(n)
% Fixed Point function equivalent to MATLAB function eye(n)

a=fi(1,1,40,20);        % Set a=1
b=fi(0,1,40,20);        % Set b=0
for i=1:n
    for j=1:n
        if i==j
        V(i,j)=a;       % Set diagonal elements as a
        else V(i,j)=b;  % Set the other elements as b
        end
    end
end
end
%%
function a = normfixed1(A)
% Fixed Point function equivalent to MATLAB function norm(A)

[m,n] = size(A);                % Get size value of A
sum1 = 0;
    sum1 = fi(sum1,1,40,20);
    for j = 1:m
        sum1 = sum1+(A(j,1)^2); % Square each element and sum
    end
x = sqrt(sum1);                 % Calculate norm
a = fi(x,1,40,20);
end
%%
function S= transposedfixed1(A)
% Fixed Point function equivalent to MATLAB function A'

[m,n]=size(A);              % Get size of matrix A
 A1=fi(A,1,40,20);
for i=1:m
    for j=1:n
        S(j,i)=A1(i,j);     % Interchange elements of the matrix
     end
end
end
%%
function [U,S,V]=jacobi_svdfixed1(A)
% Fixed Point function equivalent to MATLAB function svd(A) implemented
% using 1-sided Jacobi algorithm

[m,n]=size(A);               % Get size of matrix A
U=A;                         % Assign U as A
V=eyefixed1(n);              % Assign V as identity matrix of size n
count=5;                     % Number of sweeps
%%
while(count>=1)
    
    for i = 1:n-1

        for j = i+1:n

             a = normfixed1(U(:,i));    % Calculate norm of ith column
             b = normfixed1(U(:,j));    % Calculate norm of jit column
                
                
                % Assure the singular values will appear in decreasing order in S
                % swap columns i and j of U and V
                if a < b

                temp(:,j) = U(:,j);
                U(:,j) = U(:,i);
                U(:,i) = temp(:,j);

                temp1(:,j) = V(:,j);
                V(:,j) = V(:,i);
                V(:,i) = temp1(:,j);

                end

                %%
                %compute submatrix of U'U
                x=0;
                y=0;
                w=0;
                
                for k=1:m
                x=x+(U(k,i))^2; 
                end

                for k=1:m
                y=y+(U(k,j))^2; 
                end

                for k=1:m
                w=w+(U(k,i))*(U(k,j)); 
                end
                %%
                % Compute the Jacobi rotation that diagonalizes the
                % submatrix
                if w ~= 0
                    alpha=(y-x)/(2*w);
       
                    if alpha>=0
                        t = 1/(abs(alpha)+sqrt(1+alpha^2));
                    else
                        t = -(1/(abs(alpha)+sqrt(1+alpha^2)));
                    end

                    c=1/sqrt(1+t^2);
                     s=c*t;
                else
                     c=1;
                     s=0;
                end
                    
                    c1 = fi(c,1,40,20);
                    s1 = fi(s,1,40,20);
                    %% 
                    % update columns i and j of U
                    T1 = U(:,i);
                    U(:,i)=c1*T1-s1*U(:,j);
                    U(:,j)=s1*T1+c1*U(:,j);
                    
                    % update matrix V of right singular vectors
                    T2 = V(:,i);
                    V(:,i)=c1*T2-s1*V(:,j);
                    V(:,j)=s1*T2+c1*V(:,j);


        end 

    end
count = count - 1;
end

%%
%singular values are the norms of the columns of U
for j=1:n
    singvals(j)=normfixed1(U(:,j));
    singvals1=fi(singvals(j),1,40,20);
    if (singvals > 0)
     U(:,j) = U(:,j)/singvals1;
    end 
    
end

U = fi(U,1,40,20);
S=diagfixed1(singvals);     % Arrange singular values along the diagonal of S
end