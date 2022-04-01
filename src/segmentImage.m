function [edge_image, segmented_image] = segmentImage(img, filter)
    % Do edge detection
    switch filter
        case 'lap'
            edge_image = laplace(rgb2gray(img));
        case 'log'
            edge_image = logauss(rgb2gray(img));
        case 'prewitt'
            edge_image = prewitt(rgb2gray(img));
        case 'roberts'
            edge_image = roberts(rgb2gray(img));
        case 'sobel'
            edge_image = sobel(rgb2gray(img));
        case 'canny' 
            edge_image = edge(rgb2gray(img),'canny');
    end
    closed_image = imclose(edge_image,strel('line',5,0));
    
    % Fill the image
    filled_image = imfill(closed_image, 'holes');

    % Remove small objects
    opened_image = imopen(filled_image, strel(ones(3,3)));
    mask_image = bwareaopen(opened_image,1000);

    % Apply mask to each of the RGB layer
    red_processed=img(:,:,1).*uint8(mask_image);
    green_processed=img(:,:,2).*uint8(mask_image);
    blue_processed=img(:,:,3).*uint8(mask_image);
    segmented_image = cat(3,red_processed,green_processed,blue_processed);
end