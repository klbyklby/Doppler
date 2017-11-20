function [y] = Doppler(v,fc,fr,A,rate,fs,N,SNR)
c = 3.0*10^8;
lamda =c/fc;
fd= 2*v/lamda;
y= pulses(fc+fd,fr+fd,A,rate,fs,N,SNR);
plot(y)