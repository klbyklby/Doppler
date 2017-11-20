function y = matched_filter(x,fr,fs,N) %�����ظ�Ƶ��fr��������fs,�����ź�x
y0 = fftshift(fft(x,N));
y_f = conj(y0)*exp(-j*2*pi*fs/fr);
y = ifft(y_f,N);
plot(real(y))
