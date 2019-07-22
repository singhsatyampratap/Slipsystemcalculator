% this function calulates all possible slip normal and direction given a
% example slip direction and normal in 4 axes hexagonal system
function [NSLIP, SLIPNOR, SLIPDIR]=slipsystemcalculator(slipdir, slipnor);
slipdir3=hex3(slipdir);%four axes to three axes hexa   
slipnor3=hex3(slipnor);%four axes to three axes hexa
SLIPDIR3=symmetry3fold(slipdir3');%generate all possible slip direction by rotating it by 120 deg
SLIPNOR3=symmetry3fold(slipnor3');%generate all possible slip normal by rotating it by 120 deg
% to use it for hexagonal crystal system just use symmetry6fold() function
SLIPDIR4=hex4(SLIPDIR3);%three axes to four axes hexa 
SLIPNOR4=hex4(SLIPNOR3);%three axes to four axes hexa 

m=length(SLIPDIR4(:,1));
n=length(SLIPNOR4(:,1));



NSLIPNOR=zeros(1,4);
NSLIPDIR=zeros(1,4);
for i=1:m
 for j=1:n
    h=SLIPNOR4(j,1); 
    k=SLIPNOR4(j,2);
    I=SLIPNOR4(j,3);
    l=SLIPNOR4(j,4);
    u=SLIPDIR4(i,1); 
    v=SLIPDIR4(i,2);
    t=SLIPDIR4(i,3);
    w=SLIPDIR4(i,4);
if( h*u+k*v+I*t+l*w<0.0001)%weiss zone law to find all the possible slip system
    %check whether the slip direction lies on the slip plane 
    KA=[SLIPNOR4(j,:)];
    KB=[SLIPDIR4(i,:)];
    NSLIPNOR=[NSLIPNOR; KA];
    NSLIPDIR=[NSLIPDIR; KB];
end
 end
end
NSLIP=length(NSLIPNOR(:,1))-1;% stores number of total slip system
SLIPNOR=NSLIPNOR(2:NSLIP+1,:);% stores all the slip normal generated
SLIPDIR=NSLIPDIR(2:NSLIP+1,:);% stores all the slip direction generated
end
       
