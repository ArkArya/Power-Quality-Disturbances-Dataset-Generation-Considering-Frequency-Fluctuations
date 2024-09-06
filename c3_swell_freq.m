% function xs = c3_swell( )
clc;
clear all;
close all;

flag=0;
count = 0;
t=0:0.0001:.2;
xs = zeros(900, 3200);
SNR = 20; % noise level for the signal

for alpha=0.1:0.2:0.9
    for t1=0:0.01:0.15
        for k=0.01:0.02:0.06

            t2=t1+k;
            x=@(t) (1+ alpha*((heaviside(t-t1)-heaviside(t-t2)))).*sin(2*pi*50*t); %% Generated Signal for 50Hz
            flag=flag+1;
            count = count + 1;

            % Add 20 dB Gaussian noise to the signal
            x_20 = awgn(x(t), SNR, 'measured');

             % Visualization
            if flag > 50 && flag < 70
                figure(flag)
                plot(t,x(t));
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
end

xs(1:100,:) = xs_temp(1:100,:);
xs_20 = xs_temp_20(1:200,:);

flag = 0;
for alpha=0.1:0.2:0.9
    for t1=0:0.01:0.15
        for k=0.01:0.02:0.06

            t2=t1+k;
            x=@(t) (1+ alpha*((heaviside(t-t1)-heaviside(t-t2)))).*sin(2*pi*48*t); %% Generated Signal for 48Hz
            flag=flag+1;
            count = count + 1;

            % Add 20 dB Gaussian noise to the signal
            x_20 = awgn(x(t), SNR, 'measured');

            %sampling
            fs=16000-1;
            ts=0:1/fs:0.2;
            xs_temp(flag,:)=x(ts);
            xs_temp_20(flag,:) = awgn(x(ts), SNR, 'measured');

        end
    end
end
xs(101:200,:) = xs_temp(1:100,:);

flag = 0;
for alpha=0.1:0.2:0.9
    for t1=0:0.01:0.15
        for k=0.01:0.02:0.06

            t2=t1+k;
            x=@(t) (1+ alpha*((heaviside(t-t1)-heaviside(t-t2)))).*sin(2*pi*48.5*t); %% Generated Signal for 48.5Hz
            flag=flag+1;
            count = count + 1;

            % Add 20 dB Gaussian noise to the signal
            x_20 = awgn(x(t), SNR, 'measured');

            %sampling
            fs=16000-1;
            ts=0:1/fs:0.2;
            xs_temp(flag,:)=x(ts);
            xs_temp_20(flag,:) = awgn(x(ts), SNR, 'measured');

        end
    end
end
xs(201:300,:) = xs_temp(1:100,:);
xs_20 = [xs_20; xs_temp_20(1:100,:)];

flag = 0;
for alpha=0.1:0.2:0.9
    for t1=0:0.01:0.15
        for k=0.01:0.02:0.06

            t2=t1+k;
            x=@(t) (1+ alpha*((heaviside(t-t1)-heaviside(t-t2)))).*sin(2*pi*49*t); %% Generated Signal for 49Hz
            flag=flag+1;
            count = count + 1;

            % Add 20 dB Gaussian noise to the signal
            x_20 = awgn(x(t), SNR, 'measured');

            %sampling
            fs=16000-1;
            ts=0:1/fs:0.2;
            xs_temp(flag,:)=x(ts);
            xs_temp_20(flag,:) = awgn(x(ts), SNR, 'measured');

        end
    end
end
xs(301:400,:) = xs_temp(1:100,:);
xs_20 = [xs_20; xs_temp_20(1:100,:)];

flag = 0;
for alpha=0.1:0.2:0.9
    for t1=0:0.01:0.15
        for k=0.01:0.02:0.06

            t2=t1+k;
            x=@(t) (1+ alpha*((heaviside(t-t1)-heaviside(t-t2)))).*sin(2*pi*49.5*t); %% Generated Signal for 49.5Hz
            flag=flag+1;
            count = count + 1;

            % Add 20 dB Gaussian noise to the signal
            x_20 = awgn(x(t), SNR, 'measured');

            %sampling
            fs=16000-1;
            ts=0:1/fs:0.2;
            xs_temp(flag,:)=x(ts);
            xs_temp_20(flag,:) = awgn(x(ts), SNR, 'measured');

        end
    end
end
xs(401:500,:) = xs_temp(1:100,:);
xs_20 = [xs_20; xs_temp_20(1:100,:)];

flag = 0;
for alpha=0.1:0.2:0.9
    for t1=0:0.01:0.15
        for k=0.01:0.02:0.06

            t2=t1+k;
            x=@(t) (1+ alpha*((heaviside(t-t1)-heaviside(t-t2)))).*sin(2*pi*50.5*t); %% Generated Signal for 50.5Hz
            flag=flag+1;
            count = count + 1;

            % Add 20 dB Gaussian noise to the signal
            x_20 = awgn(x(t), SNR, 'measured');

            %sampling
            fs=16000-1;
            ts=0:1/fs:0.2;
            xs_temp(flag,:)=x(ts);
            xs_temp_20(flag,:) = awgn(x(ts), SNR, 'measured');

        end
    end
end
xs(501:600,:) = xs_temp(1:100,:);
xs_20 = [xs_20; xs_temp_20(1:100,:)];

flag = 0;
for alpha=0.1:0.2:0.9
    for t1=0:0.01:0.15
        for k=0.01:0.02:0.06

            t2=t1+k;
            x=@(t) (1+ alpha*((heaviside(t-t1)-heaviside(t-t2)))).*sin(2*pi*51*t); %% Generated Signal for 51Hz
            flag=flag+1;
            count = count + 1;

            % Add 20 dB Gaussian noise to the signal
            x_20 = awgn(x(t), SNR, 'measured');

            %sampling
            fs=16000-1;
            ts=0:1/fs:0.2;
            xs_temp(flag,:)=x(ts);
            xs_temp_20(flag,:) = awgn(x(ts), SNR, 'measured');

        end
    end
end
xs(601:700,:) = xs_temp(1:100,:);
xs_20 = [xs_20; xs_temp_20(1:100,:)];

flag = 0;
for alpha=0.1:0.2:0.9
    for t1=0:0.01:0.15
        for k=0.01:0.02:0.06

            t2=t1+k;
            x=@(t) (1+ alpha*((heaviside(t-t1)-heaviside(t-t2)))).*sin(2*pi*51.5*t); %% Generated Signal for 51.5Hz
            flag=flag+1;
            count = count + 1;

            % Add 20 dB Gaussian noise to the signal
            x_20 = awgn(x(t), SNR, 'measured');

            %sampling
            fs=16000-1;
            ts=0:1/fs:0.2;
            xs_temp(flag,:)=x(ts);
            xs_temp_20(flag,:) = awgn(x(ts), SNR, 'measured');

        end
    end
end
xs(701:800,:) = xs_temp(1:100,:);
xs_20 = [xs_20; xs_temp_20(1:100,:)];

flag = 0;
for alpha=0.1:0.2:0.9
    for t1=0:0.01:0.15
        for k=0.01:0.02:0.06

            t2=t1+k;
            x=@(t) (1+ alpha*((heaviside(t-t1)-heaviside(t-t2)))).*sin(2*pi*52*t); %% Generated Signal for 52Hz
            flag=flag+1;
            count = count + 1;

            % Add 20 dB Gaussian noise to the signal
            x_20 = awgn(x(t), SNR, 'measured');

            %sampling
            fs=16000-1;
            ts=0:1/fs:0.2;
            xs_temp(flag,:)=x(ts);
            xs_temp_20(flag,:) = awgn(x(ts), SNR, 'measured');

        end
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

% csvwrite('dataset3_freq.csv', xs);
% csvwrite('dataset3_20db.csv', xs_20);
