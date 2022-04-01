function edge_image = laplace(img)
    H = [0 1 0; 1 -4 1; 0 1 0];
    edge_image = convn(double(img), double(H), 'same');
end