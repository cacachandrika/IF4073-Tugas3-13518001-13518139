function edge_image = logauss(img)
    [M,N,D]=size(img);
    H = fspecial('log');
    edge_image = convn(double(img), double(H), 'same');
    for i = 1:M
        edge_image(i,1)=0;
    end
end