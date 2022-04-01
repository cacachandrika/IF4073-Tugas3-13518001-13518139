function edge_image = prewitt(I)
    Px = [-1 0 1; -1 0 1; -1 0 1];
    Py = [-1 -1 -1; 0 0 0; 1 1 1];
    Jx = convn(double(I), double(Px), 'same');
    Jy = convn(double(I), double(Py), 'same');
    edge_image = sqrt(Jx.^2 + Jy.^2);
end