//2D Linear Convolution and Circular Convoolution between 2D matrices.
clc; 
disp("Jay Rathod T127");
x=[22,2;3,42];
h=[15,6;72,8];
g=conv2(x,h);
X=fft(x); //2d fft of x matrix
H=fft(h); //2nd fft of h matrix
Y=X.*H; //Element by Element Multiplication
y=ifft(Y);
disp('x = ',x);
disp('h = ',h);
disp('Linear Conversion: ',g);
disp('Circular Conversion : ',y);
