function Hd = bandpas_1
%BANDPAS_1 Returns a discrete-time filter object.

% MATLAB Code
% Generated by MATLAB(R) 9.7 and DSP System Toolbox 9.9.
% Generated on: 03-May-2020 09:02:02

% Equiripple Bandpass filter designed using the FIRPM function.

% All frequency values are in MHz.
Fs = 60;  % Sampling Frequency

Fstop1 = 10;               % First Stopband Frequency
Fpass1 = 12.5;             % First Passband Frequency
Fpass2 = 17.5;             % Second Passband Frequency
Fstop2 = 20;               % Second Stopband Frequency
Dstop1 = 0.0031622776602;  % First Stopband Attenuation
Dpass  = 0.0028782234183;  % Passband Ripple
Dstop2 = 0.0031622776602;  % Second Stopband Attenuation
dens   = 20;               % Density Factor

% Calculate the order from the parameters using FIRPMORD.
[N, Fo, Ao, W] = firpmord([Fstop1 Fpass1 Fpass2 Fstop2]/(Fs/2), [0 1 ...
    0], [Dstop1 Dpass Dstop2]);

% Calculate the coefficients using the FIRPM function.
b  = firpm(N, Fo, Ao, W, {dens});
Hd = dsp.FIRFilter( ...
    'Numerator', b);

% [EOF]
