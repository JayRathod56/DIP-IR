//Perform threshold operation, perform gray level slicing without background

clc;
disp("Jay Rathod T127");

//Thresholding
a = imread("C:\Users\jayan\Documents\Sem 6\DIP\Jay_GreyScale_img.jpg");
//a = rgb2gray(a);
//a = uint8(a);
figure(1);
imshow(a);
title('Orignal Image');
bin = im2bw(a,0.5);
figure(2);
imshow(bin);
title("Thresholding");








//Gray level slicing without background
z=double(a);
[row col]=size(z);
for i=1:1:row
    for j=1:1:col
        if(z(i,j)>50)&&(z(i,j)<150)
            z(i,j)=255;
        else
            z(i,j)=0;
        end
    end
end
z = uint8(z);
//figure(1);
//imshow(uint8(a));
//title("Orignal Image");
figure(3);
imshow(z);
title("Grey Level Slicing without background");




