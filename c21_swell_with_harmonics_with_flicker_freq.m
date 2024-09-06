% function xs = c21_swell_with_harmonics_with_flicker_freq( )

clc;
clear;
close all;

count = 0;
t=0:0.0001:.2;
alpha = 0.3;
alpha1 = 1;
k = 0.05;
SNR = 20;

F = 50;
flag=0;
for vn=-180:180:180
    for t1=0:0.05:0.15
        for alpha3=0.05:0.05:0.15
            for alpha5=0.05:0.05:0.15
                for lamda=0.05:0.01:0.1
                    for fn=8:4:25

                        t2=t1+k;

                        x=@(t) sin(2*pi*F*t) + (1 + lamda* sin(2*pi*fn*t)) .* (alpha1*sin(1*2*pi*F*t-vn) + alpha3*sin(3*2*pi*F*t-vn) + alpha5*sin(5*2*pi*F*t-vn)) .* ( alpha *(heaviside(t-t1)-heaviside(t-t2))); %% Generated Signal
                        flag = flag + 1;
                        count = count + 1;

                        % Add 20 dB Gaussian noise to the signal
%                         SNR = 10; % Signal-to-noise ratio in dB
                        x_20 = awgn(x(t), SNR, 'measured');

                        % % visualisation
                        if flag > 1501 && flag < 1510
                            figure(flag)
%                             plot(t,x(t));
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
        end
    end
end

xs = xs_temp(1201:1225,:);
xs = [xs; xs_temp(1501:1525,:)];
xs = [xs; xs_temp(1801:1825,:)];
xs = [xs; xs_temp(2001:2025,:)];

xs_20 = xs_temp_20(1201:1250,:);
xs_20 = [xs_20; xs_temp_20(1501:1525,:)];
xs_20 = [xs_20; xs_temp_20(1801:1825,:)];
xs_20 = [xs_20; xs_temp_20(2001:2025,:)];

F = 48;
flag=0;
for vn=-180:180:180
    for t1=0:0.05:0.15
        for alpha3=0.05:0.05:0.15
            for alpha5=0.05:0.05:0.15
                for lamda=0.05:0.01:0.1
                    for fn=8:4:25

                        t2=t1+k;

                        x=@(t) sin(2*pi*F*t) + (1 + lamda* sin(2*pi*fn*t)) .* (alpha1*sin(1*2*pi*F*t-vn) + alpha3*sin(3*2*pi*F*t-vn) + alpha5*sin(5*2*pi*F*t-vn)) .* ( alpha *(heaviside(t-t1)-heaviside(t-t2))); %% Generated Signal
                        flag = flag + 1;
                        count = count + 1;

                        % Add 20 dB Gaussian noise to the signal
%                         SNR = 10; % Signal-to-noise ratio in dB
%                         x_20 = awgn(x(t), SNR, 'measured');

                        % % visualisation
%                         if flag > 2001 && flag < 2025
%                             figure(flag)
%                             plot(t,x(t));
% %                             plot(t,x_20);
%                             hold on;
%                         end

                        %sampling
                        fs=16000-1;
                        ts=0:1/fs:0.2;
                        xs_temp(flag,:)=x(ts);
                        xs_temp_20(flag,:) = awgn(x(ts), SNR, 'measured');

                    end
                end
            end
        end
    end
end

xs = [xs; xs_temp(1201:1225,:)];
xs = [xs; xs_temp(1501:1525,:)];
xs = [xs; xs_temp(1801:1825,:)];
xs = [xs; xs_temp(2001:2025,:)];

xs_20 = [xs_20; xs_temp_20(1201:1225,:)];
xs_20 = [xs_20; xs_temp_20(1501:1525,:)];
xs_20 = [xs_20; xs_temp_20(1801:1825,:)];
xs_20 = [xs_20; xs_temp_20(2001:2025,:)];


F = 48.5;
flag=0;
for vn=-180:180:180
    for t1=0:0.05:0.15
        for alpha3=0.05:0.05:0.15
            for alpha5=0.05:0.05:0.15
                for lamda=0.05:0.01:0.1
                    for fn=8:4:25

                        t2=t1+k;

                        x=@(t) sin(2*pi*F*t) + (1 + lamda* sin(2*pi*fn*t)) .* (alpha1*sin(1*2*pi*F*t-vn) + alpha3*sin(3*2*pi*F*t-vn) + alpha5*sin(5*2*pi*F*t-vn)) .* ( alpha *(heaviside(t-t1)-heaviside(t-t2))); %% Generated Signal
                        flag = flag + 1;
                        count = count + 1;

                        % Add 20 dB Gaussian noise to the signal
%                         SNR = 10; % Signal-to-noise ratio in dB
%                         x_20 = awgn(x(t), SNR, 'measured');

                        % % visualisation
%                         if flag > 2001 && flag < 2025
%                             figure(flag)
%                             plot(t,x(t));
% %                             plot(t,x_20);
%                             hold on;
%                         end

                        %sampling
                        fs=16000-1;
                        ts=0:1/fs:0.2;
                        xs_temp(flag,:)=x(ts);
                        xs_temp_20(flag,:) = awgn(x(ts), SNR, 'measured');

                    end
                end
            end
        end
    end
end

xs = [xs; xs_temp(1201:1225,:)];
xs = [xs; xs_temp(1501:1525,:)];
xs = [xs; xs_temp(1801:1825,:)];
xs = [xs; xs_temp(2001:2025,:)];

xs_20 = [xs_20; xs_temp_20(1201:1225,:)];
xs_20 = [xs_20; xs_temp_20(1501:1525,:)];
xs_20 = [xs_20; xs_temp_20(1801:1825,:)];
xs_20 = [xs_20; xs_temp_20(2001:2025,:)];


F = 49;
flag=0;
for vn=-180:180:180
    for t1=0:0.05:0.15
        for alpha3=0.05:0.05:0.15
            for alpha5=0.05:0.05:0.15
                for lamda=0.05:0.01:0.1
                    for fn=8:4:25

                        t2=t1+k;

                        x=@(t) sin(2*pi*F*t) + (1 + lamda* sin(2*pi*fn*t)) .* (alpha1*sin(1*2*pi*F*t-vn) + alpha3*sin(3*2*pi*F*t-vn) + alpha5*sin(5*2*pi*F*t-vn)) .* ( alpha *(heaviside(t-t1)-heaviside(t-t2))); %% Generated Signal
                        flag = flag + 1;
                        count = count + 1;

                        % Add 20 dB Gaussian noise to the signal
%                         SNR = 10; % Signal-to-noise ratio in dB
%                         x_20 = awgn(x(t), SNR, 'measured');

                        % % visualisation
%                         if flag > 2001 && flag < 2025
%                             figure(flag)
%                             plot(t,x(t));
% %                             plot(t,x_20);
%                             hold on;
%                         end

                        %sampling
                        fs=16000-1;
                        ts=0:1/fs:0.2;
                        xs_temp(flag,:)=x(ts);
                        xs_temp_20(flag,:) = awgn(x(ts), SNR, 'measured');

                    end
                end
            end
        end
    end
end

xs = [xs; xs_temp(1201:1225,:)];
xs = [xs; xs_temp(1501:1525,:)];
xs = [xs; xs_temp(1801:1825,:)];
xs = [xs; xs_temp(2001:2025,:)];

xs_20 = [xs_20; xs_temp_20(1201:1225,:)];
xs_20 = [xs_20; xs_temp_20(1501:1525,:)];
xs_20 = [xs_20; xs_temp_20(1801:1825,:)];
xs_20 = [xs_20; xs_temp_20(2001:2025,:)];

F = 49.5;
flag=0;
for vn=-180:180:180
    for t1=0:0.05:0.15
        for alpha3=0.05:0.05:0.15
            for alpha5=0.05:0.05:0.15
                for lamda=0.05:0.01:0.1
                    for fn=8:4:25

                        t2=t1+k;

                        x=@(t) sin(2*pi*F*t) + (1 + lamda* sin(2*pi*fn*t)) .* (alpha1*sin(1*2*pi*F*t-vn) + alpha3*sin(3*2*pi*F*t-vn) + alpha5*sin(5*2*pi*F*t-vn)) .* ( alpha *(heaviside(t-t1)-heaviside(t-t2))); %% Generated Signal
                        flag = flag + 1;
                        count = count + 1;

                        % Add 20 dB Gaussian noise to the signal
%                         SNR = 10; % Signal-to-noise ratio in dB
%                         x_20 = awgn(x(t), SNR, 'measured');

                        % % visualisation
%                         if flag > 2001 && flag < 2025
%                             figure(flag)
%                             plot(t,x(t));
% %                             plot(t,x_20);
%                             hold on;
%                         end

                        %sampling
                        fs=16000-1;
                        ts=0:1/fs:0.2;
                        xs_temp(flag,:)=x(ts);
                        xs_temp_20(flag,:) = awgn(x(ts), SNR, 'measured');

                    end
                end
            end
        end
    end
end

xs = [xs; xs_temp(1201:1225,:)];
xs = [xs; xs_temp(1501:1525,:)];
xs = [xs; xs_temp(1801:1825,:)];
xs = [xs; xs_temp(2001:2025,:)];

xs_20 = [xs_20; xs_temp_20(1201:1225,:)];
xs_20 = [xs_20; xs_temp_20(1501:1525,:)];
xs_20 = [xs_20; xs_temp_20(1801:1825,:)];
xs_20 = [xs_20; xs_temp_20(2001:2025,:)];

F = 50.5;
flag=0;
for vn=-180:180:180
    for t1=0:0.05:0.15
        for alpha3=0.05:0.05:0.15
            for alpha5=0.05:0.05:0.15
                for lamda=0.05:0.01:0.1
                    for fn=8:4:25

                        t2=t1+k;

                        x=@(t) sin(2*pi*F*t) + (1 + lamda* sin(2*pi*fn*t)) .* (alpha1*sin(1*2*pi*F*t-vn) + alpha3*sin(3*2*pi*F*t-vn) + alpha5*sin(5*2*pi*F*t-vn)) .* ( alpha *(heaviside(t-t1)-heaviside(t-t2))); %% Generated Signal
                        flag = flag + 1;
                        count = count + 1;

                        % Add 20 dB Gaussian noise to the signal
%                         SNR = 10; % Signal-to-noise ratio in dB
%                         x_20 = awgn(x(t), SNR, 'measured');

                        % % visualisation
%                         if flag > 2001 && flag < 2025
%                             figure(flag)
%                             plot(t,x(t));
% %                             plot(t,x_20);
%                             hold on;
%                         end

                        %sampling
                        fs=16000-1;
                        ts=0:1/fs:0.2;
                        xs_temp(flag,:)=x(ts);
                        xs_temp_20(flag,:) = awgn(x(ts), SNR, 'measured');

                    end
                end
            end
        end
    end
end

xs = [xs; xs_temp(1201:1225,:)];
xs = [xs; xs_temp(1501:1525,:)];
xs = [xs; xs_temp(1801:1825,:)];
xs = [xs; xs_temp(2001:2025,:)];

xs_20 = [xs_20; xs_temp_20(1201:1225,:)];
xs_20 = [xs_20; xs_temp_20(1501:1525,:)];
xs_20 = [xs_20; xs_temp_20(1801:1825,:)];
xs_20 = [xs_20; xs_temp_20(2001:2025,:)];


F = 51;
flag=0;
for vn=-180:180:180
    for t1=0:0.05:0.15
        for alpha3=0.05:0.05:0.15
            for alpha5=0.05:0.05:0.15
                for lamda=0.05:0.01:0.1
                    for fn=8:4:25

                        t2=t1+k;

                        x=@(t) sin(2*pi*F*t) + (1 + lamda* sin(2*pi*fn*t)) .* (alpha1*sin(1*2*pi*F*t-vn) + alpha3*sin(3*2*pi*F*t-vn) + alpha5*sin(5*2*pi*F*t-vn)) .* ( alpha *(heaviside(t-t1)-heaviside(t-t2))); %% Generated Signal
                        flag = flag + 1;
                        count = count + 1;

                        % Add 20 dB Gaussian noise to the signal
%                         SNR = 10; % Signal-to-noise ratio in dB
%                         x_20 = awgn(x(t), SNR, 'measured');

                        % % visualisation
%                         if flag > 2001 && flag < 2025
%                             figure(flag)
%                             plot(t,x(t));
% %                             plot(t,x_20);
%                             hold on;
%                         end

                        %sampling
                        fs=16000-1;
                        ts=0:1/fs:0.2;
                        xs_temp(flag,:)=x(ts);
                        xs_temp_20(flag,:) = awgn(x(ts), SNR, 'measured');

                    end
                end
            end
        end
    end
end

xs = [xs; xs_temp(1201:1225,:)];
xs = [xs; xs_temp(1501:1525,:)];
xs = [xs; xs_temp(1801:1825,:)];
xs = [xs; xs_temp(2001:2025,:)];

xs_20 = [xs_20; xs_temp_20(1201:1225,:)];
xs_20 = [xs_20; xs_temp_20(1501:1525,:)];
xs_20 = [xs_20; xs_temp_20(1801:1825,:)];
xs_20 = [xs_20; xs_temp_20(2001:2025,:)];

F = 51.5;
flag=0;
for vn=-180:180:180
    for t1=0:0.05:0.15
        for alpha3=0.05:0.05:0.15
            for alpha5=0.05:0.05:0.15
                for lamda=0.05:0.01:0.1
                    for fn=8:4:25

                        t2=t1+k;

                        x=@(t) sin(2*pi*F*t) + (1 + lamda* sin(2*pi*fn*t)) .* (alpha1*sin(1*2*pi*F*t-vn) + alpha3*sin(3*2*pi*F*t-vn) + alpha5*sin(5*2*pi*F*t-vn)) .* ( alpha *(heaviside(t-t1)-heaviside(t-t2))); %% Generated Signal
                        flag = flag + 1;
                        count = count + 1;

                        % Add 20 dB Gaussian noise to the signal
%                         SNR = 10; % Signal-to-noise ratio in dB
%                         x_20 = awgn(x(t), SNR, 'measured');

                        % % visualisation
%                         if flag > 2001 && flag < 2025
%                             figure(flag)
%                             plot(t,x(t));
% %                             plot(t,x_20);
%                             hold on;
%                         end

                        %sampling
                        fs=16000-1;
                        ts=0:1/fs:0.2;
                        xs_temp(flag,:)=x(ts);
                        xs_temp_20(flag,:) = awgn(x(ts), SNR, 'measured');

                    end
                end
            end
        end
    end
end

xs = [xs; xs_temp(1201:1225,:)];
xs = [xs; xs_temp(1501:1525,:)];
xs = [xs; xs_temp(1801:1825,:)];
xs = [xs; xs_temp(2001:2025,:)];

xs_20 = [xs_20; xs_temp_20(1201:1225,:)];
xs_20 = [xs_20; xs_temp_20(1501:1525,:)];
xs_20 = [xs_20; xs_temp_20(1801:1825,:)];
xs_20 = [xs_20; xs_temp_20(2001:2025,:)];


F = 52;
flag=0;
for vn=-180:180:180
    for t1=0:0.05:0.15
        for alpha3=0.05:0.05:0.15
            for alpha5=0.05:0.05:0.15
                for lamda=0.05:0.01:0.1
                    for fn=8:4:25

                        t2=t1+k;

                        x=@(t) sin(2*pi*F*t) + (1 + lamda* sin(2*pi*fn*t)) .* (alpha1*sin(1*2*pi*F*t-vn) + alpha3*sin(3*2*pi*F*t-vn) + alpha5*sin(5*2*pi*F*t-vn)) .* ( alpha *(heaviside(t-t1)-heaviside(t-t2))); %% Generated Signal
                        flag = flag + 1;
                        count = count + 1;

                        % Add 20 dB Gaussian noise to the signal
%                         SNR = 10; % Signal-to-noise ratio in dB
%                         x_20 = awgn(x(t), SNR, 'measured');

                        % % visualisation
%                         if flag > 2001 && flag < 2025
%                             figure(flag)
%                             plot(t,x(t));
% %                             plot(t,x_20);
%                             hold on;
%                         end

                        %sampling
                        fs=16000-1;
                        ts=0:1/fs:0.2;
                        xs_temp(flag,:)=x(ts);
                        xs_temp_20(flag,:) = awgn(x(ts), SNR, 'measured');

                    end
                end
            end
        end
    end
end

xs = [xs; xs_temp(1201:1225,:)];
xs = [xs; xs_temp(1501:1525,:)];
xs = [xs; xs_temp(1801:1825,:)];
xs = [xs; xs_temp(2001:2025,:)];

xs_20 = [xs_20; xs_temp_20(1201:1225,:)];
xs_20 = [xs_20; xs_temp_20(1501:1525,:)];
xs_20 = [xs_20; xs_temp_20(1801:1825,:)];
xs_20 = [xs_20; xs_temp_20(2001:2025,:)];


% shuffling dataset
% Get the number of rows in the matrix
numRows = size(xs, 1);

% Generate a random permutation of row indices
shuffledIndices = randperm(numRows);

% Shuffle the rows of the matrix based on the shuffled indices
xs = xs(shuffledIndices, :);
xs_20 = xs_20(shuffledIndices, :);

% csvwrite("dataset21_freq.csv",xs);
% csvwrite('dataset21_20db.csv', xs_20);

