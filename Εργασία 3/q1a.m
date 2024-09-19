img2 = imread('photo-deg.jpg');

y = medfilt2(img2,[6 6]);
figure
imshow(y)