function g = hpfilter(f, a)
%create a highpass filter function

    F = fft2(f);
    Sf = size(F);
    
    M = ones(Sf(1), Sf(2));
    M(1, 129-a:129+a) = 0;
    M(129-a:129+a, 1) = 0;
    M(129-a:129+a, 129-a:129+a) = 0;
    M = 1-M;
    

    M(1,1) = 0;
    G = F.*M;
%     figure(778), mesh(abs(G)), view(3)
    
    g = ifft2(G);

end 