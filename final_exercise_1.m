f = imread('P1030975.jpg');
f = imresize(f, [300 400]);

%  trial one
% % f_contrast = 1./(1+(0.3./f).^20);
% % f_power = f.^0.5;
% f_contrast = 1./(1+(0.2./f).^50);
% 
% % f_contrast(1:101, 299:400) = 1;
% % f_contrast(261:300, 137:400) = 1;
% % f_contrast(215:300, 194:400) = 1;
% wSv = [-1 -2 -1; 0 0 0; 1 2 1];
% wSh = [-1 0 1; -2 0 2; -1 0 1];
% wS45 = [-2 -1 0; -1 0 1; 0 1 2];
% 
% g = abs(conv_2d(f_contrast, wSh)) + abs(conv_2d(f_contrast, wSv));
% imtool(g)

%  trial two

f(:,:,2) = 0; % set green components to 0
f = mat2gray(rgb2gray(f)); % convert to grey image
f = 1./(1+(0.289./f).^30); % apply contrast-stretching transformation


wSv = [-1 -2 -1; 0 0 0; 1 2 1];
wSh = [-1 0 1; -2 0 2; -1 0 1];
wS45 = [-2 -1 0; -1 0 1; 0 1 2];
wL = [0 -1 0; -1 4 -1; 0 -1 0];

%apply edge detection
f = abs(conv_2d(f, wL)) + abs(conv_2d(f, wSv)) + abs(conv_2d(f, wS45));

% add squares to hide unwanted data
% f(:, 1:33) = 0;
% f(76:121, 32:52) = 0;
% f(253:260, 160:188) = 0;
% f(249:254, 168:187) = 0;
% f(246:249, 178:190) = 0;
% f(1:77, :, :) = 0;
% f(260:end,:, :) = 0;
% f(223:end, 187:end, :) = 0;
% f(1:103, 303:end) = 0;
% f(73:98, 287:303) = 0;
% f(75:87, 268:289) = 0;
% f(102:118, 325:400) = 0;
% f(120:131, 368:400) = 0;
% f(73:91, 51:68) = 0;
% f(235:256, 32:75) = 0;
% f(238:255, 68:97) = 0;
% f(215:228, 277:317) = 0;

figure, imshow(f, [])