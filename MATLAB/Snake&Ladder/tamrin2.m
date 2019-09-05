n=input('please enter number of your vriables:');

x=zeros(1,n);
for q=1:n
    
 x(1,q)=input('please enter the computer array:');
end

y=zeros(1,n);
for q=1:n
 y(1,q)=input('please enter the matlab array:');   
end

z=zeros(1,n);
for q=1:n
 z(1,q)=input('please enter the network array:');   
end

answer3=intersect(x,y,z);
disp(answer1);