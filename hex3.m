%convert four axis hexagonal coordinatesystem to three axis hexagonal system
function [axesch]=hex3(axes4)
l=length(axes4(:,1));
axes=zeros(l,3);
axes3(:,1)=axes4(:,1)-axes4(:,3);
axes3(:,2)=axes4(:,2)-axes4(:,3);
axes3(:,3)=axes4(:,4);
axesch=axes3;
end