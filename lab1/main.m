f1 = inline('exp(x) - x.^2 -2');
df1 = inline('exp(x) - 2*x');

f2 = inline('((x+1).^3).*(x-2)');
df2 = inline('((x+1).^2).*(4*x-5)');

[x1,y1] = syndyasmos_D_NR(f,df,1,3);

for i=2:(y1-1)
    first(i-1) = abs((x1(i+1) - x1(i))) / ((x1(i) - x1(i-1)).^2);
end
first;

[x2,y2] = syndyasmos_D_NR(g,dg,-1.5,0);
z1(1) = abs(x2(1) + 1);

for i=2:y2
    z1(i) = abs(x2(i) + 1);
    second(i-1) = abs((x2(i) + 1)) / abs(x2(i-1) + 1);
end
second;

[x3,y3] = syndyasmos_D_NR(g,dg,1.5,3);
z2(1) = abs(x3(1) - 2);

for i=2:y3
    z2(i) = abs(x3(i) - 2);
    third(i-1) = abs(((x3(i) - 2)) / (((x3(i-1) - 2)).^2));
end
third;