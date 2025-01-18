function t = imedge(f)
A = f(:,:,1);
B = f(:,:,2);
C = f(:,:,3);

gx = [-1 -2 -1; 0 0 0; 1 2 1];
gy = [-1 0 1; -2 0 2; -1 0 1];

MA = abs(conv2(A,gx,'same'))+abs(conv2(A,gy,'same'));
MB = abs(conv2(B,gx,'same'))+abs(conv2(B,gy,'same'));
MC = abs(conv2(C,gx,'same'))+abs(conv2(C,gy,'same'));

t(:,:,1) = MA;
t(:,:,2) = MB;
t(:,:,3) = MC;
end