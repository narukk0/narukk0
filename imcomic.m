function c = imcomic(f)
    c = imblur(f,9);
    edge = imedge(c);
    edge = 1.8*rgb2gray(edge);
    c = 1.1*imblur(f,26);
    c(:,:,1) = c(:,:,1)-edge;
    c(:,:,2) = c(:,:,2)-edge;
    c(:,:,3) = c(:,:,3)-edge;
end