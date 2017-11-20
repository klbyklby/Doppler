function [v] = measure(y,fr,fc,fs,A,N,Fpass,Fstop,Dpass,Dstop,dens,D,N1,N2)
c = 3.0*10^8;
lamda =c/fc;
fd= 2*222.222/lamda;
t=0:1/fs:fix(fs/(fr+fd))*N/fs;
fct=A*sin(2*pi*(fc+fd)*t);
y1 = y .* fct;
y2 = low_pass_filter(y1,5*Fstop,Fpass,Fstop,Dpass,Dstop,dens);
y3 = matched_filter(y2,fr,fs,N1);
for i=1:length(y3)/D
    y4(i) = y3(D*i);
end
% y4_f = fft(y4,N2);
% plot_figure(y4_f,N2,fs);
% d_max = argmax(abs(y4_f));
% f_max = 2*pi*d_max/N2/D*fs; 
% v = f_max *lamda/2.0;
