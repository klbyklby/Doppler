clear;
fc=1e9;
fr=100000;
A=1;
rate=0.2;
fs=4e9;
N=50;
D1=5000;
SNR=10;
y = Doppler(300,fc,fr,A,rate,fs,N,SNR);
t=0:1/fs:(length(y)-1)/fs;
fct=A*cos(2*pi*fc*t);
y1 = y.*fct;
y2 = low_pass_filter(y1,fs,1/3*fc,2/3*fc,0.057501127785,0.0001,16);
figure(1);
plot(y2);
title('y2');

% for i=1:fix(length(y2)/D1)
%      y3(i) = y2(D1*i);
% end
% figure(2);
% plot(y3);
% title('y3');
% % % y4 = low_pass_filter(y3,fs/D1,15000,30000,0.057501127785,0.0001,16);
% % figure(3);
% % plot(y4);
% % title('y4');
%  y3_f=dft(y3,length(y3));
%  figure(3)
%  plot(real(y3_f));
%  title('y3_f');