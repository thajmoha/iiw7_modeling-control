%% timer

clc; clear all; 
close all;

tic 

PCTUPDT=1; % Updates every __% ?

xmax=1; % Lenght of x (should always be 1!) 
XPTS=22; % Number of discrete points in x
dx_r=1/XPTS; % Distance between each discrete point in x (roughly)
x=linspace(0,1,1/dx_r); % x vector
dx=x(2)-x(1);
N=length(x);

dt=dx^4/16; % Time between each discrete value of t
tmax=2; % Length of simulation 
t=0:dt:tmax; % Time vector

Totaltime=0;
for n=1:length(t)-1
    %Real-time-keeping routime (for monitoring purposes)
    if rem(n,round(length(t)/(100/PCTUPDT)))==0
        Psf=round((n/length(t))*100);
        Pr=100-Psf;
        LstStp=toc;
        Totaltime=Totaltime+toc;
        %         ETA=Totaltime/Psf*Pr;
        ETA=LstStp/PCTUPDT*Pr;
        disp([num2str(round((n/length(t))*100)),'% Done. Last step: ',num2str(toc),' secs. Total Time: ',num2str(Totaltime),' secs. (',num2str(Totaltime/60),' mins.) ETA: ',num2str(ETA),' secs. (',num2str(ETA/60),' mins.)'])
        datestr(now);
        tic
    end
    
end




toc;

disp('DONE!')