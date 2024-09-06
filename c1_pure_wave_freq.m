% function xs_all = c1_pure_wave( )
clc;
close all;
clear all;

t = 0:0.0001:0.2;
SNR = 20; % Noise Level for the signal
x = @(t) sin(2*pi*48*t); % signal for 48Hz fundamental frequency

%% Sampling
num_repetitions = 100;
fs = 16000 - 1;
ts = 0:1/fs:0.2;

xs_all = zeros(num_repetitions*9, length(ts));
x_20_all = zeros(num_repetitions, length(ts)); % empty set for all sampled noise added signal

for i = 1:num_repetitions
    xs = x(ts);
    x_20 = awgn(xs, SNR, 'measured'); % noise added signal
    xs_all(i, :) = xs;
    x_20_all(i,:) = x_20; 
end

x = @(t) sin(2*pi*48.5*t); % signal for 48.5Hz fundamental frequency

for i = 1:num_repetitions
    xs = x(ts);
    x_20 = awgn(xs, SNR, 'measured');
    xs_all(i+100, :) = xs;
    x_20_all(i+100,:) = x_20;
end

x = @(t) sin(2*pi*49*t); % signal for 49Hz fundamental frequency
for i = 1:num_repetitions
    xs = x(ts);
    x_20 = awgn(xs, SNR, 'measured');
    xs_all(i+200, :) = xs;
    x_20_all(i+200,:) = x_20;
end

x = @(t) sin(2*pi*49.5*t); % signal for 49.5Hz fundamental frequency
for i = 1:num_repetitions
    xs = x(ts);
    x_20 = awgn(xs, SNR, 'measured');
    xs_all(i+300, :) = xs;
    x_20_all(i+300,:) = x_20;
end

x = @(t) sin(2*pi*50*t); % signal for 50Hz fundamental frequency
for i = 1:num_repetitions
    xs = x(ts);
    x_20 = awgn(xs, SNR, 'measured');
    xs_all(i+400, :) = xs;
    x_20_all(i+400,:) = x_20;   
end


x = @(t) sin(2*pi*50.5*t); % signal for 50.5Hz fundamental frequency
for i = 1:num_repetitions
    xs = x(ts);
    x_20 = awgn(xs, SNR, 'measured');
    xs_all(i+500, :) = xs;
    x_20_all(i+500,:) = x_20;
end

x = @(t) sin(2*pi*51*t); % signal for 51Hz fundamental frequency
for i = 1:num_repetitions
    xs = x(ts);
    x_20 = awgn(xs, SNR, 'measured');
    xs_all(i+600, :) = xs;
    x_20_all(i+600,:) = x_20;
end

x = @(t) sin(2*pi*51.5*t); % signal for 51.5Hz fundamental frequency
for i = 1:num_repetitions
    xs = x(ts);
    x_20 = awgn(xs, SNR, 'measured');
    xs_all(i+700, :) = xs;
    x_20_all(i+700,:) = x_20;
end

x = @(t) sin(2*pi*52*t); % signal for 52Hz fundamental frequency
for i = 1:num_repetitions
    xs = x(ts);
    x_20 = awgn(xs, SNR, 'measured');
    xs_all(i+800, :) = xs;
    x_20_all(i+800,:) = x_20;
end


% shuffling dataset
% Get the number of rows in the matrix
numRows = size(xs_all, 1);

% Generate a random permutation of row indices
shuffledIndices = randperm(numRows);

% Shuffle the rows of the matrix based on the shuffled indices
xs_all = xs_all(shuffledIndices, :);
x_20_all = x_20_all(shuffledIndices, :);

%% Visulalisation
% Plotting the original signal and the noisy signal
% figure;
% subplot(2,1,1);
% plot(t, x(t));
% title('Original Signal');
% xlabel('Time');
% ylabel('Amplitude');

% subplot(2,1,2);
% plot(t, x_20);
% title('Signal with 20 dB Gaussian Noise');
% xlabel('Time');
% ylabel('Amplitude');

% csvwrite('dataset1_freq.csv', xs_all);
% csvwrite('dataset1_20db.csv', x_20_all);