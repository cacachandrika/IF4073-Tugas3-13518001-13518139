function edge_image = prewitt(img)
    [M,N,D]=size(img);
    Px = [-1 0 1; -1 0 1; -1 0 1];
    Py = [1 1 1; 0 0 0; -1 -1 -1];
    Jx = convn(double(img), double(Px), 'same');
    Jy = convn(double(img), double(Py), 'same');
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