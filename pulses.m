function [x] = pulses( fc,fr,A,rate,fs,N,SNR)                                    %��Ƶfc�������ظ�Ƶ��fr������A��������T,������fs,�������N
%UNTITLED4 �˴���ʾ�йش˺�����ժҪ
%�˴���ʾ��ϸ˵��
t=0:1/fs:fix(fs/fr)*N/fs;
fct=A*sin(2*pi*fc*t);
p=zeros(1,length(t));
count = fix(fs/fr);
count_1 = fix(rate*fs/fr);
for i=0:N-1
    for j=1:count_1
        p(j+i*count)=1;
    end
end
x=fct.*p; 
x=noise_adder(x,SNR);
end