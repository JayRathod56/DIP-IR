//Brightness enhancement of an image, Contrast Manipulation, image negative

clc;
disp("Jay Rathod T127");

//Brightness Enhancement
a = imread("C:\Users\jayan\Documents\Sem 6\DIP\Deadspy.jpg");
a = rgb2gray(a); // Converts RGB img to Gray
b = double(a)+50; // Brightness increased by 50
b = uint8(b);
c = double(a)-10; // Brightness decreased by 10
c = uint8(c);
figure(1);
imshow(uint8(a));
title('Orignal Image');
figure(2);
imshow(b);
title('Brightness Enchanted Image')
figure(3);
imshow(c);
title("Brightness Reduced Image");

//Supressed Image
b=double(a)-50;
b=uint8(b);
//figure(1);
//imshow(uint8(a));
//title("Orignal Image");
figure(4);
imshow(uint8(b));
title("Supressed Image");











//Contrast Manipulation
b=double(a)*0.5;
b=uint8(b);
c=double(b)*2;
c=uint8(c);
//figure(1);
//imshow(uint8(a));
//title("Orignal Image");
figure(5);
imshow(uint8(b));
title("Decrease in Contrast")
figure(6);
imshow(uint8(c));
title("Increase in Contrast");






//Image Negative
k=255-double(a);
k=uint8(k);
figure(7);
imshow(k);
title("Negative Image");













