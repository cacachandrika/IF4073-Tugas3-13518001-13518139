function edge_image = log(I)
    [M,N,D]=size(I);
    H = fspecial('log');
    edge_image = convn(double(I), double(H), 'same');
    for i = 1:M
        edge_image(i,1)=0;
    end
end
