function [set]=symmetry3fold(v)%generates three fold symmetry along z axis 
%just by rotating it by 120 deg
a=v;
L=[1,-1/2,0;0,sqrt(3)/2,0;0,0,3.14]% L is  transformation matrix and
%include the crystal aspect ratio c/a in L(3,3)
Linv=inv(L);
A=2*pi/3;
Rz=[cos(A), -sin(A), 0; sin(A), cos(A), 0; 0,0,1];% R is the rotation 
%matrix that rotates the coordinated by 120 deg
b=(Linv*(Rz*(L*a)));
A=4*pi/3;
Rz=[cos(A), -sin(A), 0; sin(A), cos(A), 0; 0,0,1];
c=(Linv*(Rz*(L*a)));
set=[a';b';c'];
end


