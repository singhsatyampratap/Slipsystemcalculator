% this file generate a text file while contains the lines of the code
% that are to be edited in the GB_Diffusion code
% to use it open umat_crystal_plasticity from user_code and search for
% "EDITED TO INCLUDE THE TRIGONAL AND CRYSTAL ASPECT RATIO EFFECT"
% paste the output generate in the slipsystemoutput.txt

[n,slipnor,slipdir]=slipsystemcalculator([1,0,-1,4],[-2,0,2,1]);% input the slip normal and direction here
for i=1:n
    nor(i,:)=hexatocartes(slipnor(i,:));
    dir(i,:)=hexatocartes(slipdir(i,:));
end
fileID = fopen('slipsystemoutput.txt','w');
fprintf(fileID,'%2s\n' ,'!Slip Normal');
formatSpec='SLPNOR(:,%1.0f)=(/%6.4f , %6.4f, %6.4f /)\n'
for i=1:n
fprintf(fileID,formatSpec,i,nor(i,1),nor(i,2),nor(i,3));
end
fprintf(fileID,'%2s\n' ,'!Slip Direction');
formatSpec='SLPDIR(:,%1.0f)=(/%6.4f , %6.4f, %6.4f/)\n';
for i=1:n
fprintf(fileID,formatSpec,i,dir(i,1),dir(i,2),dir(i,3));
end
fclose(fileID);
