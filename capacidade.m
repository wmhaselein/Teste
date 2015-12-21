clc

f=@(V,t) 1-V;

h=0.01;
N=20;

[y1,t1]=mat_euler(f,0,1,h,N);

