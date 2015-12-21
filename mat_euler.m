function [y,t]=mat_euler(f,ti,yi,h,N)
    t=(ti:h:ti+N*h);
    y=zeros(size(t));
    y=yi;
    for i=1:N
        y(:,i+1)=y(:,i)+h*f(y(:,i),t(i));
    end
end

