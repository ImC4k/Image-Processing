function [g] = median_2d(f)
    
    [Y, X] = size(f);
    f2 = zeros(Y+2, X+2);
    f2(2:Y+1, 2:X+1) = f;
    g2 = zeros(Y+2, X+2);
    
    for y = 2:Y+1
        for x = 2:X+1 
            s = [f2(y-1, x-1:x+1), f2(y, x-1:x+1), f2(y+1, x-1:x+1)];
            g2(y,x) = median(sort(s));
        end
    end
    
    g = g2(2:Y+1, 2:X+1);
end