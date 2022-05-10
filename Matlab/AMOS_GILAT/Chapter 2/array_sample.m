clear;
clc;

row_vec = [2.5 3.44 54/15 32 160^(1/4) cos(pi/12) 0.12];
disp(row_vec);

col_vec = [52.2; ((10*tan(34))/(1.5*1.5+4)); factorial(4); 1.8^4; 0.406; (pi/5)^2];
disp(col_vec);

inc_vec = (3:6:42);
disp(inc_vec);

same_vec = [linspace(0,0,5) linspace(6.8,6.8,2)];
disp(same_vec);

inc_dec_vec = [(2:8) (7:-1:2)];
disp(inc_dec_vec);

lin_matrix1 = [linspace(0,24,7);linspace(500,200,7);linspace(0,8,7)];
disp(lin_matrix1);

lin_matrix2(2:4,3:5) = [1 2 3; 4 5 6; 7 8 9];
disp(lin_matrix2);

flag1 = [ones(2,2),zeros(2,2)];
flag2 = [zeros(2,2),ones(2,2)];
zero_one_mat1 = [flag1,flag1;flag2,flag2];
disp(zero_one_mat1);

zero_one_mat2 = [eye(3,3),eye(3,3);eye(3,3),eye(3,3)];
disp(zero_one_mat2);