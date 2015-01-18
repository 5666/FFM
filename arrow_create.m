% stencil creation

% loading image
[a, b, image] = imread('Picture1','PNG');
image(image>0) = 1;
image = double(image);
clear('a','b')

% resizing the matrix to fit a 400x500 matrix

[h, w] = size(image);

w_pad = ceil((500-w)/2);
h_pad = ceil((400-h)/2);

arrow = [zeros(h, w_pad), image, zeros(h, w_pad)]
arrow = [zeros(h_pad,size(arrow,2)); arrow; zeros(h_pad,size(arrow,2))]

arrow = arrow([1:400],[1:500]);

save('arrow.mat','arrow')
