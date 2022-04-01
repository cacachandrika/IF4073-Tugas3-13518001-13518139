function edgeIm = prewitt(I)
    [M,N,D]=size(I);
    Px = [-1 0 1; -1 0 1; -1 0 1];
    Py = [1 1 1; 0 0 0; -1 -1 -1];
    Jx = convn(double(I), double(Px), 'same');
    Jy = convn(double(I), double(Py), 'same');
    edgeIm = sqrt(Jx.^2 + Jy.^2);
    for i = 1:M
        edgeIm(i,1)=0;
        edgeIm(i,N)=0;
    end
    for j = 1:N
        edgeIm(1,j)=0;
        edgeIm(M,j)=0;
    end
    edgeIm = uint8(edgeIm);
%     figure, imshow(edgeIm);
end
