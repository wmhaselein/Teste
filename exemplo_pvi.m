clc

f=@(x,t) 1-x;

h=0.01;
N=20;

[y1,t1]=mat_euler(f,0,1,h,N);
[y2,t2]=mat_euler_melhorado(f,0,1,h,N);
[y3,t3]=mat_predicao_correcao(f,0,1,h,N);
[y4,t4]=mat_runge4(f,0,1,h,N);
[y5,t5]=mat_adams2(f,0,1,h,N);
[y6,t6]=mat_adams3(f,0,1,h,N);
[y7,t7]=mat_adams4(f,0,1,h,N);


figure(1)
plot(t1,y1,'o-')
hold on
plot(t2,y2,'o-')
plot(t3,y3,'o-')
plot(t4,y4,'ro-')
plot(t5,y5,'o-')
plot(t6,y6,'o-')
plot(t7,y7,'go-')
hold off





