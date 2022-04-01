function edge_image = sobel(I)
    [M,N,D]=size(I);
    Sx = [-1 0 1; -2 0 2; -1 0 1];
    Sy = [1 2 1; 0 0 0; -1 -2 -1];
    Jx = convn(double(I), double(Sx), 'same');
    Jy = convn(double(I), double(Sy), 'same');
    edge_image = sqrt(Jx.^2 + Jy.^2);
    for i = 1:M
        edge_image(i,1)=0;
        edge_image(i,N)=0;
    end
    for j = 1:N
        edge_image(1,j)=0;
        edge_image(M,j)=0;
    end
end