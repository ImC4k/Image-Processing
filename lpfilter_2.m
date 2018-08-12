function [ g ] = lpfilter_2( f, r )

 [M, N] = size( f ) ;

F = fft2(double( f )) ;
Ds = distance(M, N) ;
Hlp = (Ds<=r) ;

Lp = 1 - Hlp;
Lp(1,1) = 0;
G = F.*Lp;
g = ifft2(G);




% figure, imshow(g,[ ])

end
