function [g] = conv_2d_55(f, w)
            [Y, X] = size(f) ;
        f2 = zeros(Y+4, X+4) ;   % create zero array as f2
        f2(3:Y+2, 3:X+2) = f ;     % copy f to f2
        g2 = zeros(Y+4, X+4) ;  % create output matrix
        w2 = w(5: -1: 1, 5: -1 :1) ;   % rotate w by 180 dgree 
        for ny = 3:Y+2
            for nx = 3:X+2
                s = f2(ny-2:ny+2, nx-2:nx+2).*w2;
                g2(ny,nx) = sum(s(:));
            end
        end        
        g = g2(3:Y+2, 3:X+2) ;

end