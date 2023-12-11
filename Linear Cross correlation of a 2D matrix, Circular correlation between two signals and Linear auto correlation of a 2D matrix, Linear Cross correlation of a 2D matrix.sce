//Linear Cross correlation of a 2D matrix, Circular correlation between two signals and Linear auto correlation of a 2D matrix, Linear Cross correlation of a 2D matrix

clc;
disp("Jay Rathod T127");
A=[12, 5;25, 8];
a1=[14, 3;13, 6];
disp("A = ",A);
disp("a1 = ",a1);

//align columns in inverse order
A2=a1(:,$:-1:1);

//align rows in inverse order
B=A2($:-1:1,:); //Basically it is the Transpose of Matrix a1
C=conv2(A,B);
disp("Linear cross correlation of a 2D matrix: ", C);

a1=a1(:,$:-1:1);
a1=a1($:-1:1,:);
X=fft2(A);
H=fft2(a1);
Y=X.*H
y=ifft(Y);
disp('Circularrre correlaion between two signals : ', y);

A2=A(:,$:-1:1); 
A2=A2($:-1:1,:);
x=conv2(A, A2);
disp("Linear auto correalation of a 2D matrix: ",x);

