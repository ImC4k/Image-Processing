function  Ds = distance( M, N )

u = 0 : (M-1) ;
v = 0 : (N-1) ;

idy = find(u>=M/2) ;
u(idy) = u(idy) - M ;
idx = find(v>=N/2) ;
v(idx) = v(idx) - N ;

U = u' * ones(1, N) ;
V = ones(M, 1) * v  ;

Us = fftshift(U) ;
Vs = fftshift(V) ;
Ds = ( Us.^2+Vs.^2 ).^0.5 ; 

end
