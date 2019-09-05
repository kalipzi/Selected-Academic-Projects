A=input('please enter your array:');
[r,c]=size(A);
B=zeros(r,c);
[k1,k2]=find(A>0);
B(k1,k2)=A(k1,k2);
disp(B);

