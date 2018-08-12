function [] = generate_filters_2d(g)
% f = imread(g);
f = g;
w3 = 1/9.*ones(3,3);
w5 = ones(5,5)/25;
wG = [1 2 1; 2 4 2; 1 2 1]*1/16;
wDv = [0 -1 0; 0 0 0; 0 1 0];
wDh = [0 0 0; -1 0 1; 0 0 0];
wSv = [-1 -2 -1; 0 0 0; 1 2 1];
wSh = [-1 0 1; -2 0 2; -1 0 1];
wL1 = [0 1 0; 1 -4 1; 0 1 0];
wL2 = [1 1 1; 1 -8 1; 1 1 1];
subplot(2,5,1), imshow(f), title('original');
subplot(2,5,2), imshow(conv_2d(f, w3),[]), title('3x3 mean filter');
subplot(2,5,3), imshow(conv_2d_55(f, w5),[]), title('5x5 mean filter');
subplot(2,5,4), imshow(conv_2d(f, wG),[]), title('gaussian filter');
subplot(2,5,5), imshow(conv_2d(f, wDv),[]), title('first vertical derivative filter');
subplot(2,5,6), imshow(conv_2d(f, wDh),[]), title('first horizontal derivative filter');
subplot(2,5,7), imshow(conv_2d(f, wSv),[]), title('sobel vertical gradient filter');
subplot(2,5,8), imshow(conv_2d(f, wSh),[]), title('sobel horizontal gradient filter');
subplot(2,5,9), imshow(conv_2d(f, wL1),[]), title('laplacian 4 neighbouring filter');
subplot(2,5,10), imshow(conv_2d(f, wL2),[]), title('laplacian 8 neighbouring filter');
end