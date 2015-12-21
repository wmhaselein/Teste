clc

f=@(H,t) 0.005*(sin(t)+1)-0.025*H;

h=0.1;
N=5;

[y1,t1]=mat_euler(f,0,0.5,h,N);