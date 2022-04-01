function edge_image = sobel(I)
    Sx = [-1 0 1; -2 0 2; -1 0 1];
    Sy = [1 2 1; 0 0 0; -1 -2 -1];
    Jx = convn(double(I), double(Sx), 'same');
    Jy = convn(double(I), double(Sy), 'same');
    edge_image = sqrt(Jx.^2 + Jy.^2);
end