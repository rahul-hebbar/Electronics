n = input("What bit multiplier to implement: ");
lut = zeros(2^n,n);
for i=1:1:2^n
    for j=1:1:n
        lut(i,j) = (i-1)*(2^(j-1));
    end
end
a = input("Enter multiplicant: ");
b = input("Enter multiplier: ");

if (a > 2^n-1 || b > 2^n-1)
    fprintf("inputs out of multiplier range < %d \n",2^n-1);
else
   b_bin = dec2bin(b,n);
   a_lut = flip(lut(a+1,:));
   mul = 0;
   for k=1:1:length(b_bin)
       if (b_bin(k) == '1')
           mul = mul + a_lut(k);
       else
           mul = mul + 0;
       end
   end
   fprintf("Ouput of multiplication is %d\n",mul)
   disp(dec2bin(mul,2*n+1));
end
