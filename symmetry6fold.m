function [set]=symmetry6fold(v)%generates three fold symmetry along z axis just by rotating it by 60 deg
L=[1,-1/2,0;0,sqrt(3)/2,0;0,0,1]% L is  transformation matrix and include 
%the crystal aspect ratio c/a in L(3,3)
Linv=inv(L);
for i=1:6;
    A=i*pi/3;
    Rz=[cos(A), -sin(A), 0; sin(A), cos(A), 0; 0,0,1];% R is the rotation 
    %matrix that rotates the coordinated by 60 deg about z axis
    set(i,:)=(Linv*(Rz*(L*v)));
end


