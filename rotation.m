function [rotate]= rotation(prop1, prop2, prop3,prop4)
prop1=[0.70710,0.70710,0],prop2=[-0.70710,0.70710,0],prop3=[1,0,0],prop4=[0,1,0];
a=prop1
b=prop2
c=cross(a,b);
angle=acos(dot(a,b));
term3=[a; b; c ];
term2=inv(term3);
a=prop3
b=prop4
c=cross(a,b);
term1=[a; b; c ];
rotate= term1*term2;
end