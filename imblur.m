function h = imblur(f,k)
A = f(:,:,1);
B = f(:,:,2);
C = f(:,:,3);

w = zeros(k,k);
w = w + 1/(k^2);

h(:,:,1) = conv2(A,w,'same');
h(:,:,2) = conv2(B,w,'same');
h(:,:,3) = conv2(C,w,'same');
end