function edgeIm = roberts(I)
    Rx = [1 0; 0 -1];
    Ry = [0 1; -1 0];
    Jx = conv2(double(I), double(Rx), 'same');
    Jy = conv2(double(I), double(Ry), 'same');
    Jedge = sqrt(Jx.^2 + Jy.^2);
    figure, imshow(uint8(Jedge));
end