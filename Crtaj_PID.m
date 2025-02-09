%% X-os ---------------------------------------------------------------------------
if crtaj_x_os==1;

figure(4)
subplot(4,1,[1,2])
hold off
plot(time(pocetak:kraj),P(pocetak:kraj,1))
hold on
plot(time(pocetak:kraj),I(pocetak:kraj,1))
plot(time(pocetak:kraj),D(pocetak:kraj,1))
plot(time(pocetak:kraj),u_R(pocetak:kraj,1),'LineWidth',1)
legend('P','I','D','u_R')
grid minor
title('PID X-os')

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

figure(5)
subplot(4,1,[1,2])
hold off
plot(time(pocetak:kraj),P(pocetak:kraj,2))
hold on
plot(time(pocetak:kraj),I(pocetak:kraj,2))
plot(time(pocetak:kraj),D(pocetak:kraj,2))
plot(time(pocetak:kraj),u_R(pocetak:kraj,2),'LineWidth',1)
legend('P','I','D','u_R')
grid minor
title('PID Y-os')

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

figure(6)
subplot(4,1,[1,2])
hold off
plot(time(pocetak:kraj),P(pocetak:kraj,3))
hold on
plot(time(pocetak:kraj),I(pocetak:kraj,3))
plot(time(pocetak:kraj),D(pocetak:kraj,3))
plot(time(pocetak:kraj),u_R(pocetak:kraj,3),'LineWidth',1)
legend('P','I','D','u_R')
grid minor
title('PID Z-os')

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