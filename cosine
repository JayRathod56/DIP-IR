//Compute discrete cosine transform, Program to perform KL transform for the given 2D matrix
/*clc; 
disp("Jay Rathod T127");
N=4;//finding length of input sequence 
F=zeros(1,N);//cosine transform of input 
disp("F = ", F); 
disp("Discrete Cosine Transformation: ")
for k=1:N 
    for n=1:N 
        if (k-1)==0 
            C(k,n)=inv(sqrt(N)); //cosine transform matrix 
        else 
            C(k,n)=sqrt(2)*inv(sqrt(N))*cos(%pi*(2*(n-1)+1)*(k-1)/(2*N)); 
        end 
            disp(C(k,n)); 
    end
end */






//Compute discrete cosine transform, Program to perform KL transform for the given 2D matrix
clc;
clear;
disp("T084 Bhavesh Jadhav"); 
X = [4 ,3 ,5 ,6;4 ,2 ,7 ,7;5 ,5 ,6 ,7]; 
disp("X = ",X);
[m ,n]=size(X); 
A=[0]; 
E=[0]; 
for i=1:n 
    A= A+X(: ,i); 
    E= E+X(: ,i)*X(: ,i)'; 
end 
mx=A/n; //mean matri x 
E=E/n; 
C=E-mx*mx'; //covariance matrix
[V ,D]=spec(C); //eigen values and eigen vectors
d=diag(D); //diagonal elements of eigenvales 
disp('Diagonal Elements of Eigen Values: ',d) 
[d ,i]=gsort(d); //sorting in desc order
    for j=1:length(d) 
    T(: ,j)=V(: ,i(j)); 
    end 
T=T' 
disp ('Eigen Values are : ',d) 
disp ('Eigen Value Matrix : ',T ) 
disp ('KL Transform basis : ', T) 
//KL Transform 
for i=1:n 
    Y(: ,i)=T*X(: ,i); 
end 
disp ('KL Transformation of the input Matrix : ', Y); 
//Reconstruction
for i = 1: n 
    x(: ,i)=T'*Y(: ,i); 
end 
disp ('Reconstruction matrix of the given sample matrix : ',x);
