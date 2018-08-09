function g = lpfilter(f, a)
%create a lowpass filter function

    F = fft2(f);
    Sf = size(F);
    
    M = ones(Sf(1), Sf(2));
    M(1,1) = 0;
    M(1, 129-a:129+a) = 0;
    M(129-a:129+a, 1) = 0;
    M(129-a:129+a, 129-a:129+a) = 0;
    G = F.*M;
%     figure(777), mesh(abs(G)), view(3)
    g = abs(ifft2(G));

end