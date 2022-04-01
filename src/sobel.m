function edgeIm = sobel(I)
    [M,N,D]=size(I);
    Sx = [-1 0 1; -2 0 2; -1 0 1];
    Sy = [1 2 1; 0 0 0; -1 -2 -1];
    Jx = convn(double(I), double(Sx), 'same');
    Jy = convn(double(I), double(Sy), 'same');
    edgeIm = uint8(sqrt(Jx.^2 + Jy.^2));
    for i = 1:M
        edgeIm(i,1)=0;
        edgeIm(i,N)=0;
    end
    for j = 1:N
        edgeIm(1,j)=0;
        edgeIm(M,j)=0;
    end
%     figure, imshow(uint8(edgeIm));
end
