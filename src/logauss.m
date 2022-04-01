function edge_image = logauss(I)
    H = fspecial('log');
    edge_image = convn(double(I), double(H));
end