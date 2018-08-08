function [g] = conv_2d(f, w)
            [Y, X] = size(f) ;
        f2 = zeros(Y+2, X+2) ;   % create zero array as f2
        f2(2:Y+1, 2:X+1) = f ;     % copy f to f2
        g2 = zeros(Y+2, X+2) ;  % create output matrix
        w2 = w(3: -1: 1, 3: -1 :1) ;   % rotate w by 180 dgree 
        for ny = 2:Y+1
            for nx = 2:X+1
                s = f2(ny-1:ny+1, nx-1:nx+1).*w2;
                g2(ny,nx) = sum(s(:));
            end
        end        
        g = g2(2:Y+1, 2:X+1) ;

end