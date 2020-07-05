clear ; clc; close 
% Fs = 60e6;  % Sampling Frequency
% 
% Fstop1 = 10e6;               % First Stopband Frequency
% Fpass1 = 12.5e6;             % First Passband Frequency
% Fpass2 = 17.5e6;             % Second Passband Frequency
% Fstop2 = 20e6;               % Second Stopband Frequency
% Dstop1 = 0.0031622776602;  % First Stopband Attenuation
% Dpass  = 0.0028782234183;  % Passband Ripple
% Dstop2 = 0.0031622776602;  % Second Stopband Attenuation
% dens   = 20;               % Density Factor
Fpass = 0.13;   % Passband edge
Fstop = 0.14;   % Stopband edge
Rpass = 0.001;  % Passband ripple, 0.0174 dB peak to peak
Rstop = 0.0005; % Stopband ripple, 66.0206 dB minimum attenuation
Hf = fdesign.lowpass(Fpass,Fstop,Rpass,Rstop,'linear');
lpFilter_multi = design(Hf,'multistage','SystemObject',true);
fvt=fvtool(lpFilter_multi)