function[]=intialize_safhe()

N = 100;    % Numbers from 1 to N will be permuted
n = 10;    % Numbers to be extracted
x = randperm(N);    % Permute numbers between 1 and N
x = x(1:n);    

intialize();

for i=1:5
   
 m=mokhtasati(x(i));
  l =mokhtasatj(x(i));
   plat(m,l)=intialize_maar(x(i)); 
end

for i=6:10
  
  p=mokhtasati(x(i));
    o=mokhtasatj(x(i));
  plat(p,o)=intialize_nardeban(x(i));
end
disp(plat);