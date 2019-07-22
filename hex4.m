%convert three axis hexagonal coordinate system  to four axis hexagonal system
function [axesch]=hex4(axes3)
l=length(axes3(:,1));
axes4=zeros(l,4);
axes4(:,1)=1/3*(2*axes3(:,1)-axes3(:,2));
axes4(:,2)=1/3*(2*axes3(:,2)-axes3(:,1));
axes4(:,3)=-(axes4(:,1)+axes4(:,2));
axes4(:,4)=axes3(:,3)
axesch=axes4;
end

