function res = mat2dmul(a,b)
    d1 = size(a);
    d2 = size(b);
    if (length(d1) > 2 || length(d2) > 2)
        error('matrix not 2d');
    elseif (d1(2) ~= d2(1))
        error('dimension error');
    else
        temp = zeros(d1(1),d2(2));
        fg_r = 1;
        fg_c = 1;
        for i=1:1:(d1(1)*d2(2))
            val = 0;
            for j=1:1:d1(2)
                val = val + a(fg_r,j)*b(j,fg_c);
            end
            temp(fg_r,fg_c) = val;
            if (fg_c == d2(2))
                fg_c = 1;
                fg_r = fg_r + 1;
            else
                fg_c = fg_c + 1;
            end
        end
        res = temp;
    end
end

