function out=nr(f, df, n1, ,max, n)

    i = 2;
    xi = 1.1986912435;

    x(1) = n1;
    e(1) = 0;

    while (i <= n )
        x(i) = x(i-1) - (f(x(i-1)) / df(x(i-1)));
        if (abs(x(i) - x(i-1)) < max )
            break;
        end
    i = i + 1;
    end
    
    if ( i > n )
        x0 = 1:n;
    else
        x0 = 1:i;
    end
    
    out=[x0', x(x0)', f(x(x0))'];
    