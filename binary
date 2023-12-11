// Binary Image Processing

clc;
disp("Jay Rathod T127");

atomsLoad('scicv');
//atomsLoad("ipcv");
scicv_Init();

img = imread('C:\Users\jayan\Documents\Sem 6\DIP\Deadspy.jpg');
img = rgb2gray(img);
figure(1);
matplot(img);
title("Orignal Image");

// Converting into Black and White Image
[res, img_bw] = threshold(img, 127, 255, THRESH_BINARY_INV);
element= getStructuringElement(MORPH_RECT,[5,5]);

// If you get any runtime errors just reinstall ipcv and scicv modules uncheck autoload
// restart scilab and then run the code this should work. :)





//Dilate Image
img_dilate=dilate(img_bw, element);
// we need to reverse again before display
img_dilate_reverse = bitwise_not(img_dilate);
figure(2);
matplot(img_dilate_reverse);
title("Dilate Image")







//Erode Image
img_erode = erode(img_bw, element);
// we need to reverse again before display
img_erode_reverse = bitwise_not(img_erode);
figure(3);
matplot(img_erode_reverse);
title("Erode Image");




//Open Image
img_open = morphologyEx(img_bw, MORPH_OPEN, element);
//we need to reverse again before display
img_open_reverse = bitwise_not(img_open);
figure(4);
matplot(img_open_reverse);
title("Open Image");





//Close Image
img_close = morphologyEx(img_bw, MORPH_CLOSE, element);
//we need to reverse again before display
img_close_reverse = bitwise_not(img_close);
figure(5);
matplot(img_close_reverse);
title("Close Image");


