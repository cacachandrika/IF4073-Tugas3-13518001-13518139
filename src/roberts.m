function edge_image = roberts(I)
    [M,N,D]=size(I);
    Rx = [1 0; 0 -1];
    Ry = [0 1; -1 0];
    Jx = convn(double(I), double(Rx), 'same');
    Jy = convn(double(I), double(Ry), 'same');
    edge_image = sqrt(Jx.^2 + Jy.^2);
    for i = 1:M
        edge_image(i,N)=0;
    end
    for j = 1:N
        edge_image(M,j)=0;
    end
end