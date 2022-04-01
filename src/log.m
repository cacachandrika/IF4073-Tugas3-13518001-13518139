function edgeIm = log(I)
    [M,N,D]=size(I);
    H = fspecial('log');
    edgeIm = uint8(convn(double(I), double(H), 'same'));
%     figure, imshow(edgeIm), title ('Hasil deteksi tepi dengan LoG');
    for i = 1:M
        edgeIm(i,1)=0;
    end
end
