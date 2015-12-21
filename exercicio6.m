clc

f=@(u,t) exp(-t)-u;

h=0.1;
N=5;

[y1,t1]=mat_euler(f,0,0,h,N);