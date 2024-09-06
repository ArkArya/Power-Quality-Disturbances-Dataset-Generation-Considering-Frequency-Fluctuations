% function xs = c10_flicker_freq( )

clc;
clear all;
close all;

SNR = 20;
count = 0;
t=0:0.0001:.2;
xs = zeros(900, 3200);

flag=0;
F = 50;
for lamda=0.05:0.004:0.1
    for fn=8:1:25

        x=@(t) (1 + lamda* sin(2*pi*fn*t)).*sin(2*pi*F*t); %% Generated Signal
        flag=flag+1;
        count = count + 1;

        % Add 20 dB Gaussian noise to the signal
        %         SNR = 10; % Signal-to-noise ratio in dB
                x_20 = awgn(x(t), SNR, 'measured');

        %      visualisation
        if flag > 0 && flag <10
            figure(flag)
%             plot(t,x(t));
              plot(t,x_20);
            hold on;
        end

        %sampling
        fs=16000-1;
        ts=0:1/fs:0.2;
        xs_temp(flag,:)=x(ts);
        xs_temp_20(flag,:) = awgn(x(ts), SNR, 'measured');

    end
end

xs(1:100,:) = xs_temp(1:100,:);
xs_20 = xs_temp_20(1:100,:);

flag=0;
F = 48;
for lamda=0.05:0.004:0.1
    for fn=8:1:25

        x=@(t) (1 + lamda* sin(2*pi*fn*t)).*sin(2*pi*F*t); %% Generated Signal
        flag=flag+1;
        count = count + 1;

        % Add 20 dB Gaussian noise to the signal
        %         SNR = 10; % Signal-to-noise ratio in dB
        %         x_20 = awgn(x(t), SNR, 'measured');

        %      visualisation
%         if flag > 0 && flag < 20
%             figure(flag)
%             plot(t,x(t));
%             %             plot(t,x_20);
%             hold on;
%         end

        %sampling
        fs=16000-1;
        ts=0:1/fs:0.2;
        xs_temp(flag,:)=x(ts);
        xs_temp_20(flag,:) = awgn(x(ts), SNR, 'measured');

    end
end
xs(101:200,:) = xs_temp(1:100,:);
xs_20 = [xs_20; xs_temp_20(1:100,:)];

flag=0;
F = 48.5;
for lamda=0.05:0.004:0.1
    for fn=8:1:25

        x=@(t) (1 + lamda* sin(2*pi*fn*t)).*sin(2*pi*F*t); %% Generated Signal
        flag=flag+1;
        count = count + 1;

        % Add 20 dB Gaussian noise to the signal
        %         SNR = 10; % Signal-to-noise ratio in dB
        %         x_20 = awgn(x(t), SNR, 'measured');

        %sampling
        fs=16000-1;
        ts=0:1/fs:0.2;
        xs_temp(flag,:)=x(ts);
        xs_temp_20(flag,:) = awgn(x(ts), SNR, 'measured');

    end
end
xs(201:300,:) = xs_temp(1:100,:);
xs_20 = [xs_20; xs_temp_20(1:100,:)];

flag=0;
F = 49;
for lamda=0.05:0.004:0.1
    for fn=8:1:25

        x=@(t) (1 + lamda* sin(2*pi*fn*t)).*sin(2*pi*F*t); %% Generated Signal
        flag=flag+1;
        count = count + 1;

        % Add 20 dB Gaussian noise to the signal
        %         SNR = 10; % Signal-to-noise ratio in dB
        %         x_20 = awgn(x(t), SNR, 'measured');

        %sampling
        fs=16000-1;
        ts=0:1/fs:0.2;
        xs_temp(flag,:)=x(ts);
        xs_temp_20(flag,:) = awgn(x(ts), SNR, 'measured');

    end
end
xs(301:400,:) = xs_temp(1:100,:);
xs_20 = [xs_20; xs_temp_20(1:100,:)];


flag=0;
F = 49.5;
for lamda=0.05:0.004:0.1
    for fn=8:1:25

        x=@(t) (1 + lamda* sin(2*pi*fn*t)).*sin(2*pi*F*t); %% Generated Signal
        flag=flag+1;
        count = count + 1;

        % Add 20 dB Gaussian noise to the signal
        %         SNR = 10; % Signal-to-noise ratio in dB
        %         x_20 = awgn(x(t), SNR, 'measured');

        %sampling
        fs=16000-1;
        ts=0:1/fs:0.2;
        xs_temp(flag,:)=x(ts);
        xs_temp_20(flag,:) = awgn(x(ts), SNR, 'measured');

    end
end
xs(401:500,:) = xs_temp(1:100,:);
xs_20 = [xs_20; xs_temp_20(1:100,:)];

flag=0;
F = 50.5;
for lamda=0.05:0.004:0.1
    for fn=8:1:25

        x=@(t) (1 + lamda* sin(2*pi*fn*t)).*sin(2*pi*F*t); %% Generated Signal
        flag=flag+1;
        count = count + 1;

        % Add 20 dB Gaussian noise to the signal
        %         SNR = 10; % Signal-to-noise ratio in dB
        %         x_20 = awgn(x(t), SNR, 'measured');

        %sampling
        fs=16000-1;
        ts=0:1/fs:0.2;
        xs_temp(flag,:)=x(ts);
        xs_temp_20(flag,:) = awgn(x(ts), SNR, 'measured');

    end
end
xs(501:600,:) = xs_temp(1:100,:);
xs_20 = [xs_20; xs_temp_20(1:100,:)];


flag=0;
F = 51;
for lamda=0.05:0.004:0.1
    for fn=8:1:25

        x=@(t) (1 + lamda* sin(2*pi*fn*t)).*sin(2*pi*F*t); %% Generated Signal
        flag=flag+1;
        count = count + 1;

        % Add 20 dB Gaussian noise to the signal
        %         SNR = 10; % Signal-to-noise ratio in dB
        %         x_20 = awgn(x(t), SNR, 'measured');

        %sampling
        fs=16000-1;
        ts=0:1/fs:0.2;
        xs_temp(flag,:)=x(ts);
        xs_temp_20(flag,:) = awgn(x(ts), SNR, 'measured');

    end
end
xs(601:700,:) = xs_temp(1:100,:);
xs_20 = [xs_20; xs_temp_20(1:100,:)];

flag=0;
F = 51.5;
for lamda=0.05:0.004:0.1
    for fn=8:1:25

        x=@(t) (1 + lamda* sin(2*pi*fn*t)).*sin(2*pi*F*t); %% Generated Signal
        flag=flag+1;
        count = count + 1;

        % Add 20 dB Gaussian noise to the signal
        %         SNR = 10; % Signal-to-noise ratio in dB
        %         x_20 = awgn(x(t), SNR, 'measured');

        %sampling
        fs=16000-1;
        ts=0:1/fs:0.2;
        xs_temp(flag,:)=x(ts);
        xs_temp_20(flag,:) = awgn(x(ts), SNR, 'measured');

    end
end
xs(701:800,:) = xs_temp(1:100,:);
xs_20 = [xs_20; xs_temp_20(1:100,:)];

flag=0;
F = 52;
for lamda=0.05:0.004:0.1
    for fn=8:1:25

        x=@(t) (1 + lamda* sin(2*pi*fn*t)).*sin(2*pi*F*t); %% Generated Signal
        flag=flag+1;
        count = count + 1;

        % Add 20 dB Gaussian noise to the signal
        %         SNR = 10; % Signal-to-noise ratio in dB
        %         x_20 = awgn(x(t), SNR, 'measured');

        %sampling
        fs=16000-1;
        ts=0:1/fs:0.2;
        xs_temp(flag,:)=x(ts);
        xs_temp_20(flag,:) = awgn(x(ts), SNR, 'measured');

    end
end
xs(801:900,:) = xs_temp(1:100,:);
xs_20 = [xs_20; xs_temp_20(1:100,:)];


% shuffling dataset
% Get the number of rows in the matrix
numRows = size(xs, 1);

% Generate a random permutation of row indices
shuffledIndices = randperm(numRows);

% Shuffle the rows of the matrix based on the shuffled indices
xs = xs(shuffledIndices, :);
xs_20 = xs_20(shuffledIndices, :);


% csvwrite('dataset10_20db.csv', xs_20);
% csvwrite("dataset10_freq.csv",xs);
