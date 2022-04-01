function edgeIm = log(I)
    H = fspecial('log');
    edgeIm = uint8(convn(double(I), double(H)));
    figure, imshow(edgeIm), title ('Hasil deteksi tepi dengan LoG');
end
