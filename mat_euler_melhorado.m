function [y,t]=mat_euler_melhorado(f,ti,yi,h,N)
    t=(ti:h:ti+N*h);
    y=yi;
    for i=1:N
        ymeio=y(:,i)+h/2*f(y(:,i),t(i));
        y(:,i+1)=y(:,i)+h*f(ymeio,t(i)+h/2);
    end
