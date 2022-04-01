function edgeIm = laplace(I)
    H = [0 1 0; 1 -4 1; 0 1 0];
    edgeIm = uint8(convn(double(I), double(H)));
    figure, imshow(edgeIm)
end