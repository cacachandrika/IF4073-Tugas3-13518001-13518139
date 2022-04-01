function edgeIm = sobel(I)
    Sx = [-1 0 1; -2 0 2; -1 0 1];
    Sy = [1 2 1; 0 0 0; -1 -2 -1];
    Jx = conv2(double(I), double(Sx), 'same');
    Jy = conv2(double(I), double(Sy), 'same');
    edgeIm = sqrt(Jx.^2 + Jy.^2);
    figure, imshow(uint8(edgeIm));
end
