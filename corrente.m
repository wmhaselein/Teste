clc

f=@(I,t) (1/3)*(4-2*I);

h=0.1;
N=25;

[y1,t1]=mat_euler(f,0,0,h,N);