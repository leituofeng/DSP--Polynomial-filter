fs=60e6;
t = 0:1/fs:1000*1/fs;
f_low=12.5e6;f_hig=17.5e6;
y=chirp(t,f_low,1000*1/fs,f_hig);
plot(abs(fft(y)))