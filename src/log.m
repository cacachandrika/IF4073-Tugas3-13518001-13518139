function edgeIm = logauss(I)
    H = fspecial('log');
    J = uint8(convn(double(I), double(H)));
    figure, imshow(J), title ('Hasil deteksi tepi dengan LoG');
end