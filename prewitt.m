function edgeIm = prewitt(I)
    Px = [-1 0 1; -1 0 1; -1 0 1];
    Py = [-1 -1 -1; 0 0 0; 1 1 1];
    Jx = conv2(double(I), double(Px), 'same');
    Jy = conv2(double(I), double(Py), 'same');
    edgeIm = sqrt(Jx.^2 + Jy.^2);
    figure, imshow(uint8(edgeIm));
end
