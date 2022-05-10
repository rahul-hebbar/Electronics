clear;
clc;
a = input('1st seq: ');
b = input('2nd seq: ');
if length(a) > length(b)
  temp = a;
  a = b;
  b = temp;
end
a_len = length(a);
b_len = length(b);
b_flip = flip(b);
c_len = a_len + b_len - 1;
c = zeros(1,c_len);
fg = a_len - 1;
for i=1:1:fg
  t1 = horzcat(b_flip(b_len-i+1:b_len),zeros(1,a_len-i));
  t2 = horzcat(zeros(1,a_len-i),b_flip(1:i));
  c(i) = sum(t1 .* a);
  c(c_len - i + 1) = sum(t2 .* a);
end
rem = c_len - 2*fg;
for j=1:1:rem
  t = b_flip(j:j+a_len-1);
  c(c_len-fg-j+1) = sum(t .* a);
end
disp(c);