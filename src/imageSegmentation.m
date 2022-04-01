function segmentedIm = imageSegmentation(x)
    x=imread('fruit1.PNG');
    figure;    
    edge_detected = edge(rgb2gray(x),'canny');
    figure;
    imshow(edge_detected);
    closed_im = imclose(edge_detected,strel('line',10,0));
    figure;
    imshow(closed_im);
    filled_im = imfill(closed_im,'holes');
    figure;
    imshow(filled_im);
    opened_im = imopen(filled_im,strel(ones(3,3)));
    figure;
    imshow(opened_im);
    mask_image=bwareaopen(opened_im,1500);
    figure;
    imshow(mask_image);
    title('Mask Image');
    red_processed=x(:,:,1).*uint8(mask_image);
    green_processed=x(:,:,2).*uint8(mask_image);
    blue_processed=x(:,:,3).*uint8(mask_image);
    op=cat(3,red_processed,green_processed,blue_processed);
    figure;
    imshow(op);
    title('Output Image')
end