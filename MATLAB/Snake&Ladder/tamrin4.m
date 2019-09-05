s0=input('enter the number of names:');
s1=input('please enter your neme:','s');
s2='finish';
s3=strcmp(s1,s2);

  l=zeros(s0,1);

while s3==0
      for q=1:s0
  
       w=input('please enter your neme:','s');
       r=str2num(w);
       l(q,1)=r;
       s3=strcmp(w,s2);
      end
end
disp(l);
  
