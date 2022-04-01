function edge_image = roberts(I)
    Rx = [1 0; 0 -1];
    Ry = [0 1; -1 0];
    Jx = convn(double(I), double(Rx), 'same');
    Jy = convn(double(I), double(Ry), 'same');
    edge_image = sqrt(Jx.^2 + Jy.^2);
end