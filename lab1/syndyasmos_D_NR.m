function[x,num] = syndyasmos_D_NR(f,df,a,b)

    output = bisect(f,a,b,0.005,40);
    [row1,column1] = size(output);
    bisect = out1(row1,4)

    output2 = nr(f,df,bisect,0.0000005,40);
    [row2,column2] = size(output2);
    bis_plus_NR = out2(row2,2)
    
    x = [output(:,4) ; output2(:,2)];
    num = row1 + row2
