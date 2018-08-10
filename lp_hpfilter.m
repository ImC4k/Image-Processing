function [ glp, ghp ] = lp_hpfilter( f, a )
% assumption:
%   The size of an image f shuold be N x N (square) .
%   N should be an even number.
 
[N, N2] = size(f) ;
M = ones(N, N) ;
 
Mlp = M ;
Mlp((N/2+1)-a:(N/2+1)+a, (N/2+1)-a:(N/2+1)+a) = 0 ;
Mlp(1, (N/2+1)-a:(N/2+1)+a) = 0 ;
Mlp((N/2+1)-a:(N/2+1)+a, 1) = 0 ;
Mhp = 1-Mlp ;
Mlp(1,1)=0 ; Mhp(1,1)=0 ;
 
F = fft2(f) ;
Glp = F.* Mlp ;
Ghp = F.* Mhp ;
glp = ifft2(Glp) ;
ghp = ifft2(Ghp) ;
 
figure, 
subplot(2,3,1), imshow(f, []), title('Original')
subplot(2,3,2), imshow(glp, []), title('lp filtered')
subplot(2,3,3), imshow(ghp, []), title('hp filtered')
subplot(2,3,5), imshow(Mlp, []), title('Mlp')
subplot(2,3,6), imshow(Mhp, []), title('Mhp')
 
end
