% convert 4 axis hexagonal system to cartesian coordinate system
function [v]=hexatocartes(v1);
v2=hex3(v1);% 4 axis to 3 axis hexagonal system
% L is  transformation matrix and include the crystal aspect ratio c/a in L(3,3)
L=[1,-1/2,0;0,sqrt(3)/2,0;0,0,3.4188]; %3 axis hexa to cartesian note that to change the value 3.4118
v=L*v2';
mag=sqrt(sum(v.^2))
v=(1/mag)*v'; %unit vector conversion
end