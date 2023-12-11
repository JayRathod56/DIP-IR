// Color Image Processing

clc;
disp("Jay Rathod T127");

img  = imread("C:\Users\jayan\Documents\Sem 6\DIP\Deadspy.jpg");
figure(1);
imshow(img);
title("Orignal Image");
















//A
b = rgb2gray(img);
bin= im2bw(b,0.5);
figure(2);
imshow(bin);
title("Binary or Black and White Color Image");
figure(3);
imhist(bin, [], 1);
title("Black and White Color Histogram Plot");


//B
Red = img(:,:,1);
Green = img(:, :, 2);
Blue = img(:, :, 3);
[yRed, x] = imhist(Red);
[yGreen, x] = imhist(Green);
[yBlue, x] = imhist(Blue);
figure(4);
plot(x, yRed, 'Red', x, yGreen, 'Green', x, yBlue, 'Blue');
title("Red, Green and Blue Color Histogram Plot")



//C
R = img;
G = img;
B = img;

R(:, :, 2) = 0;
R(:, :, 3) = 0;
G(:, :, 1) = 0;
G(:, :, 3) = 0;
B(:, :, 1) = 0;
B(:, :, 2) = 0;

figure(5);
imshow(R);
title("Red Color Image");

figure(6);
imshow(G);
title("Green Color Image");

figure(7);
imshow(B);
title("Blue Color Image");


//D
a1 = img;
b1 = img;
c1 = img;

a1(:, :, 1) = 0;
b1(:, :, 2) = 0;
c1(:, :, 3) = 0;

figure(8);
imshow(a1);
title("a1")

figure(9);
imshow(b1);
title("b1")

figure(10);
imshow(c1);
title("c1")


