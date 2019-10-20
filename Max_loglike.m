function [M] = Max_loglike(a,b,c,d,e,f)

Mx=a;
M=1;
if(b>Mx) 
    M=2; Mx=b;
end;    
if(c>Mx) 
    M=3; Mx=c;
end;    
if(d>Mx) 
    M=4; Mx=d;
end;    
if(e>Mx) 
    M=5; Mx=e;
end;    
if(f>Mx) 
    M=6; Mx=f;  
end;
