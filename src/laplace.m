function edge_image = laplace(I)
    H = [0 1 0; 1 -4 1; 0 1 0];
    edge_image = convn(double(I), double(H), 'same');
end