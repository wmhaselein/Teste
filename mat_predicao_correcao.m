function [y,t]=mat_predicao_correcao(f,ti,yi,h,N)
    t=(ti:h:ti+N*h);
    y=yi;
    for i=1:N
        k1=f(y(:,i),t(i));
        k2=f(y(:,i)+h*k1,t(i)+h);
        y(:,i+1)=y(:,i)+h*k1/2+h*k2/2;
    end
