function [out] = bisect(f, a, b, e ,n)

    a(1) = a;
    b(1) = b;

    i = 1;

    while (i <= n )
        c(i) = (a(i)+b(i)) / 2;
        if (abs(f(c(i))) < e)      
            break;
        end
        if (f(a(i)) * f(c(i)) > 0 )
            a(i+1) = c(i);
            b(i+1) = b(i);
        else
            a(i+1) = a(i);
            b(i+1) = c(i);
        end
        i = i + 1;
    end

    if (i > n )
        x0 = 1:n;
    else
        x0 = 1:i;
    end

    out = [x0', a(x0)', b(x0)', c(x0)', f(c(x0))'];