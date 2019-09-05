A={};
 t={};
H={};
finish='finish';
x='';
y=0;
i=1;
while(y == 0)
    
    x=input('please enter the name:','s');
    A{i}=x;
    i=i+1;
    y=strcmp(x,finish);
    
end
f=i-1;




z=input('please enter 0 or 1:');
if(z ==1)
    j=1;
    while j~=4
    h=input('please enter three charachter:','s');
    t{j}=h;
    j=j+1;
    
    end
end

for(i=1:3)
    count=0;
       o=t{i}
    for(j=1:f)
        p=size(A{j});
        D=A{j};
        for(k=1:p)
            w=strcmp(D(k),o)
            if (w == 1)
               count=count+1;
               
              
            end
            
        end
      
    end
      disp('count {i} =');
        disp(count);
     H{i}=count; 
end


plot(t{1:3},H{1:3})