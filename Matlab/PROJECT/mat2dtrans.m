function res = mat2dtrans(a)
    [n,m] = size(a);
    temp = zeros(m,n);
    fg_r = 1;
    fg_c = 1;
    for i=1:1:(n*m)
        temp(fg_r,fg_c) = a(fg_c,fg_r);
        if (fg_c == m)
            fg_c = 1;
            fg_r = fg_r + 1;
        else
            fg_c = fg_c + 1;
        end
    end
    res = temp;
end

