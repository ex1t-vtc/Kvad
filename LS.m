function [est_par] = LS( n_B, n_A, u,y,time)
% LS (Least square) metoda za odreðivanje parametara sustava
%   n_B - broj koeficijenata brojnika    npr. n_B=2  B=b1*z^-1 +b2*z^-2
%   n_A - broj koeficijenata nazivnika   npr. n_A=2  A=1 +a1*z^-1 +a2*z^-1
%   u - vektor stupac mjerenja ulaza
%   y - vektor stupac mejrenja izlaza
%   time - vektor stupac vremena
n=max([n_B, n_A]);
N=length(u)-n;
Y=y(n+1:n+N);

for k=n+1:n+N
    data_vector=[0];
    for i=1:n_A
        data_vector(i)=-y(k-i);
    end
    for i=1:n_B
        data_vector(i+n_A)=u(k-i);
    end
    data_matrix(k-n,:)=data_vector;
end
est_par=inv(data_matrix'*data_matrix)*data_matrix'*Y;

%% estimacija izlaza
 U=u(n+1:n+N);
 data_vector=[0];
  %pocetno stanje izlaza i ulaza
    for i=1:n_A
        data_vector(i)=-y(n+1-i);
    end
    for i=1:n_B
        data_vector(i+n_A)=u(n+1-i);
    end
  %----------------------------
  
for k=1:N
    Y_est(k)=data_vector*est_par;
    for i=n_A:-1:2
        data_vector(i)=data_vector(i-1);
    end
    for i=n_B:-1:2
        data_vector(i+n_A)=data_vector(n_A+i-1);
    end
    data_vector(1)=-Y_est(k);
    data_vector(n_A+1)=U(k);
end
%% crtanje

figure
subplot(3,1,[1,2])
hold off
plot(time(n+1:n+N),Y)
hold on
plot(time(n+1:n+N),Y_est)
legend('y-mjereno','y-estimirano')
grid minor

subplot(3,1,3)
hold off
plot(time(n+1:n+N),U)
grid minor
title('pobuda, U')

