function [] = show_mask_difference(image)
    f = imread(image);
    w45 = [-2 -1 0; -1 0 1; 0 1 2];
    wn45 = [0 -1 -2; 1 0 -1; 2 1 0];
    wSv = [-1 -2 -1; 0 0 0; 1 2 1];
    wSh = [-1 0 1; -2 0 2; -1 0 1];
    subplot(1,6,1), imshow(f), title('original')
    subplot(1,6,2), imshow(conv_2d(f, w45), []), title('w45 Mask')
    subplot(1,6,3), imshow(conv_2d(f, wn45), []), title('wn45 mask')
    subplot(1,6,4), imshow(conv_2d(f, wSv), []), title('wSv Mask')
    subplot(1,6,5), imshow(conv_2d(f, wSh), []), title('wSh Mask')
    subplot(1,6,6), imshow(detect_edge(f,0.3), []), title('edge detection')
end