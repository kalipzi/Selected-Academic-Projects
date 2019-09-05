function[y]=mokhtasatj(x)
t=mokhtasati(x);
z=mod(x,10);
if(z==0 && mod(t,2)==0)
    y=1;
elseif(z==0 && mod(t,2)==1)
    y=10;
elseif(mod(t,2)==1 && z~=0)
y=mod(x,10);
elseif(mod(t,2)==0 && z~=0 )
    y=10-mod(x,10)+1;
end

