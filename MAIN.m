
%Struktura=sredi_csv('blackbox_log_YAW.csv');
%save Struktura.mat;
load data_ROLL.mat
load data_PITCH.mat
load data_YAW.mat
%%
load Struktura.mat;
%----------------------------------------
%data=csvread('blackbox.csv');
%----------------------------------------
data=data_ROLL
%----------------------------------------
time=data(:,1);
time=time-time(1); %da krene brojat od 0
time=time/1000; %iz milisekundi u sekunde

P=data(:,3:5);
I=data(:,6:8);
D=data(:,9:11);
u_R=P+I+D;

ROLL=data(:,12);
PITCH=data(:,13);
YAW=data(:,14);
THROTTLE=data(:,15);

baro=data(:,19);
baro=baro/100;

gyro=data(:,20:22); %gyroSCOPE X,Y,Z
acc=data(:,23:25); %accelerometar X,Y,Z



motor=data(:,26:29);


%% crtanje
crtaj_x_os=1;
crtaj_y_os=0;
crtaj_z_os=0;

pocetak_s=0
kraj_s=100

pocetak=pocetak_s*1000+1;
kraj=kraj_s*1000+1;

if pocetak>length(time) || pocetak<1
    pocetak=1;
end

if kraj>length(time) || kraj<1
    kraj=length(time);
end

%Crtaj_gyro_acc %plot(1,2,3)
Crtaj_PID  %plot(4,5,6)
%Crtaj_baro %plot(7)

Crtaj_PID_gyro %plot(8,9,10)

%% Procjena reda modela



%% estimacija
n_B=3
n_A=3

est_par=LS(n_B,n_A,u_R(pocetak:kraj,1),gyro(pocetak:kraj,1),time(pocetak:kraj))
%LS(n_B,n_A,[1 2 3 4 5 6 7 8 9]',[2 3 4 1 5 6 2 5 4]',[1 2 3 4 5 6 7 8 9]')

est_model=tf([est_par(n_A+1:n_A+n_B)'],[est_par(1:n_A)'],time(2)-time(1))
figure
pzmap(est_model)
