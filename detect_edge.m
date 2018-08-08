function [g] = detect_edge(f,t)
    wSv = [-1 -2 -1; 0 0 0; 1 2 1];
    wSh = wSv';
    gv = conv_2d(f,wSv);
    gh = conv_2d(f, wSh);

    
    abs_g = abs(gv) + abs(gh);
    abs_g = mat2gray(abs_g);
    g = abs_g > t;
end
