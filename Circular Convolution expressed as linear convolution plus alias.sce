//Circular Convolution expressed as linear convolution plus alias.
clc;
disp('Jay Rathod T127');
x=[1,2;3,4];
h=[5,6;7,8];
disp("x = ",x);
disp("h = ",h);
y=conv2(x,h);
// (:,1) gives 1st col
// (1,:) gives 1st row
// $ means last index of row or col of array
y1=[y(:,1)+y(:,$),y(:,2)];
y2=[y1(1,:)+y1($,:),y1(2,:)];
disp('Linear Convolution resutl : ',y);
disp('Circular Convolution expressed as linear convolution plus alias : ',y2);
