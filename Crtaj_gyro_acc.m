%% X-os ---------------------------------------------------------------------------
if crtaj_x_os==1;

figure(1)
subplot(4,1,[1,2])
hold off
plot(time(pocetak:kraj),gyro(pocetak:kraj,1))
hold on
plot(time(pocetak:kraj),acc(pocetak:kraj,1),'r')
legend('gyro','acc')
grid minor
title('X-os')

subplot(4,1,3)
hold off
plot(time(pocetak:kraj),motor(pocetak:kraj,1))
hold on
plot(time(pocetak:kraj),motor(pocetak:kraj,2))
plot(time(pocetak:kraj),motor(pocetak:kraj,3))
plot(time(pocetak:kraj),motor(pocetak:kraj,4))
title('Motori')
legend('Motor 1 (dolje-desno)','Motor 2 (gore-desno)','Motor 3 (dolje-lijevo)','Motor 4 (gore-lijevo)')
grid minor

subplot(4,1,4)
hold off
plot(time(pocetak:kraj),THROTTLE(pocetak:kraj),'--')
hold on
plot(time(pocetak:kraj),ROLL(pocetak:kraj),'LineWidth',1)
plot(time(pocetak:kraj),PITCH(pocetak:kraj),'--')
plot(time(pocetak:kraj),YAW(pocetak:kraj),'--')
legend('input THROTTLE','input ROLL','input PITCH','input YAW')
grid minor
end
%% Y-os -----------------------------------------------------------------------
if crtaj_y_os==1;

figure(2)
subplot(4,1,[1,2])
hold off
plot(time(pocetak:kraj),gyro(pocetak:kraj,2))
hold on
plot(time(pocetak:kraj),acc(pocetak:kraj,2),'r')
legend('gyro','acc')
grid minor
title('Y-os')

subplot(4,1,3)
hold off
plot(time(pocetak:kraj),motor(pocetak:kraj,1))
hold on
plot(time(pocetak:kraj),motor(pocetak:kraj,2))
plot(time(pocetak:kraj),motor(pocetak:kraj,3))
plot(time(pocetak:kraj),motor(pocetak:kraj,4))
title('Motori')
legend('Motor 1 (dolje-desno)','Motor 2 (gore-desno)','Motor 3 (dolje-lijevo)','Motor 4 (gore-lijevo)')
grid minor

subplot(4,1,4)
hold off
plot(time(pocetak:kraj),THROTTLE(pocetak:kraj),'--')
hold on
plot(time(pocetak:kraj),ROLL(pocetak:kraj),'--')
plot(time(pocetak:kraj),PITCH(pocetak:kraj),'LineWidth',1)
plot(time(pocetak:kraj),YAW(pocetak:kraj),'--')
legend('input THROTTLE','input ROLL','input PITCH','input YAW')
grid minor

end
%% Z-os -----------------------------------------------------------------------
if crtaj_z_os==1;

figure(3)
subplot(4,1,[1,2])
hold off
plot(time(pocetak:kraj),gyro(pocetak:kraj,3))
hold on
plot(time(pocetak:kraj),acc(pocetak:kraj,3),'r')
legend('gyro','acc')
grid minor
title('Z-os')

subplot(4,1,3)
hold off
plot(time(pocetak:kraj),motor(pocetak:kraj,1))
hold on
plot(time(pocetak:kraj),motor(pocetak:kraj,2))
plot(time(pocetak:kraj),motor(pocetak:kraj,3))
plot(time(pocetak:kraj),motor(pocetak:kraj,4))
title('Motori')
legend('Motor 1 (dolje-desno)','Motor 2 (gore-desno)','Motor 3 (dolje-lijevo)','Motor 4 (gore-lijevo)')
grid minor


subplot(4,1,4)
hold off
plot(time(pocetak:kraj),THROTTLE(pocetak:kraj),'--')
hold on
plot(time(pocetak:kraj),ROLL(pocetak:kraj),'--')
plot(time(pocetak:kraj),PITCH(pocetak:kraj),'--')
plot(time(pocetak:kraj),YAW(pocetak:kraj),'LineWidth',1)
legend('input THROTTLE','input ROLL','input PITCH','input YAW')
grid minor

end