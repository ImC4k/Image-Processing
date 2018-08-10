f = imread('P1030975.jpg');
f = imresize(f, [300 400]);
f = mat2gray(rgb2gray(f));

% f_contrast = 1./(1+(0.3./f).^20);
% f_power = f.^0.1;
f_contrast = 1./(1+(0.3./f).^20);

% f_contrast(1:101, 299:400) = 1;
% f_contrast(261:300, 137:400) = 1;
% f_contrast(215:300, 194:400) = 1;
% wSv = [-1 -2 -1; 0 0 0; 1 2 1];
% wSh = [-1 0 1; -2 0 2; -1 0 1];
% wS45 = [-2 -1 0; -1 0 1; 0 1 2];
% 
% g = abs(conv_2d(f_contrast, wSv)) + abs(conv_2d(f_contrast, wSh)) + abs(conv_2d(f_contrast, wS45));
imtool(f_contrast)

figure, imshow(f_contrast, [])