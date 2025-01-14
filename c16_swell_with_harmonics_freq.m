% function xs = c16_swell_with_harmonics_freq( )

clc;
clear all;
close all;

SNR = 20;
count = 0;
t=0:0.0001:.2;
xs = [];
alpha1 = 1;

flag=0;
F = 50;
for vn=-180:180:180
    for alpha=0.1:0.2:0.8
        for t1=0:0.03:0.15
            for k=0.02:0.02:0.06
                for alpha3=0.05:0.03:0.15
                    for alpha5=0.05:0.03:0.15

                        t2=t1+k;

                        x=@(t) sin(2*pi*F*t) + (alpha*(heaviside(t-t1)-heaviside(t-t2))).*(alpha1*sin(1*2*pi*F*t-vn) + alpha3*sin(3*2*pi*F*t-vn) + alpha5*sin(5*2*pi*F*t-vn)); %% Generated Signal
                        flag = flag + 1;
                        count = count + 1;

                        % Add 20 dB Gaussian noise to the signal
%                         SNR = 10; % Signal-to-noise ratio in dB
                        x_20 = awgn(x(t), SNR, 'measured');

                        % % visualisation
                        if flag > 2050 && flag < 2060
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

xs=xs_temp(2001:2100,:);
xs_20 = xs_temp_20(2001:2100,:);

flag=0;
F = 48;
for vn=-180:180:180
    for alpha=0.1:0.2:0.8
        for t1=0:0.03:0.15
            for k=0.02:0.02:0.06
                for alpha3=0.05:0.03:0.15
                    for alpha5=0.05:0.03:0.15

                        t2=t1+k;

                        x=@(t) sin(2*pi*F*t) + (alpha*(heaviside(t-t1)-heaviside(t-t2))).*(alpha1*sin(1*2*pi*F*t-vn) + alpha3*sin(3*2*pi*F*t-vn) + alpha5*sin(5*2*pi*F*t-vn)); %% Generated Signal
                        flag = flag + 1;
                        count = count + 1;

                        % Add 20 dB Gaussian noise to the signal
%                         SNR = 10; % Signal-to-noise ratio in dB
%                         x_20 = awgn(x(t), SNR, 'measured');

                        % % visualisation
%                         if flag > 2001 && flag < 2100
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

xs=[xs; xs_temp(2001:2100,:)];
xs_20 = [xs_20; xs_temp_20(2001:2100,:)];

flag=0;
F = 48.5;
for vn=-180:180:180
    for alpha=0.1:0.2:0.8
        for t1=0:0.03:0.15
            for k=0.02:0.02:0.06
                for alpha3=0.05:0.03:0.15
                    for alpha5=0.05:0.03:0.15

                        t2=t1+k;

                        x=@(t) sin(2*pi*F*t) + (alpha*(heaviside(t-t1)-heaviside(t-t2))).*(alpha1*sin(1*2*pi*F*t-vn) + alpha3*sin(3*2*pi*F*t-vn) + alpha5*sin(5*2*pi*F*t-vn)); %% Generated Signal
                        flag = flag + 1;
                        count = count + 1;

                        % Add 20 dB Gaussian noise to the signal
%                         SNR = 10; % Signal-to-noise ratio in dB
%                         x_20 = awgn(x(t), SNR, 'measured');

                        % % visualisation
%                         if flag > 2001 && flag < 2100
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
xs=[xs; xs_temp(2001:2100,:)];
xs_20 = [xs_20; xs_temp_20(2001:2100,:)];


flag=0;
F = 49;
for vn=-180:180:180
    for alpha=0.1:0.2:0.8
        for t1=0:0.03:0.15
            for k=0.02:0.02:0.06
                for alpha3=0.05:0.03:0.15
                    for alpha5=0.05:0.03:0.15

                        t2=t1+k;

                        x=@(t) sin(2*pi*F*t) + (alpha*(heaviside(t-t1)-heaviside(t-t2))).*(alpha1*sin(1*2*pi*F*t-vn) + alpha3*sin(3*2*pi*F*t-vn) + alpha5*sin(5*2*pi*F*t-vn)); %% Generated Signal
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
xs=[xs; xs_temp(2001:2100,:)];
xs_20 = [xs_20; xs_temp_20(2001:2100,:)];


flag=0;
F = 49.5;
for vn=-180:180:180
    for alpha=0.1:0.2:0.8
        for t1=0:0.03:0.15
            for k=0.02:0.02:0.06
                for alpha3=0.05:0.03:0.15
                    for alpha5=0.05:0.03:0.15

                        t2=t1+k;

                        x=@(t) sin(2*pi*F*t) + (alpha*(heaviside(t-t1)-heaviside(t-t2))).*(alpha1*sin(1*2*pi*F*t-vn) + alpha3*sin(3*2*pi*F*t-vn) + alpha5*sin(5*2*pi*F*t-vn)); %% Generated Signal
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
xs=[xs; xs_temp(2001:2100,:)];
xs_20 = [xs_20; xs_temp_20(2001:2100,:)];


flag=0;
F = 50.5;
for vn=-180:180:180
    for alpha=0.1:0.2:0.8
        for t1=0:0.03:0.15
            for k=0.02:0.02:0.06
                for alpha3=0.05:0.03:0.15
                    for alpha5=0.05:0.03:0.15

                        t2=t1+k;

                        x=@(t) sin(2*pi*F*t) + (alpha*(heaviside(t-t1)-heaviside(t-t2))).*(alpha1*sin(1*2*pi*F*t-vn) + alpha3*sin(3*2*pi*F*t-vn) + alpha5*sin(5*2*pi*F*t-vn)); %% Generated Signal
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
xs=[xs; xs_temp(2001:2100,:)];
xs_20 = [xs_20; xs_temp_20(2001:2100,:)];


flag=0;
F = 51;
for vn=-180:180:180
    for alpha=0.1:0.2:0.8
        for t1=0:0.03:0.15
            for k=0.02:0.02:0.06
                for alpha3=0.05:0.03:0.15
                    for alpha5=0.05:0.03:0.15

                        t2=t1+k;

                        x=@(t) sin(2*pi*F*t) + (alpha*(heaviside(t-t1)-heaviside(t-t2))).*(alpha1*sin(1*2*pi*F*t-vn) + alpha3*sin(3*2*pi*F*t-vn) + alpha5*sin(5*2*pi*F*t-vn)); %% Generated Signal
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
xs=[xs; xs_temp(2001:2100,:)];
xs_20 = [xs_20; xs_temp_20(2001:2100,:)];



flag=0;
F = 51.5;
for vn=-180:180:180
    for alpha=0.1:0.2:0.8
        for t1=0:0.03:0.15
            for k=0.02:0.02:0.06
                for alpha3=0.05:0.03:0.15
                    for alpha5=0.05:0.03:0.15

                        t2=t1+k;

                        x=@(t) sin(2*pi*F*t) + (alpha*(heaviside(t-t1)-heaviside(t-t2))).*(alpha1*sin(1*2*pi*F*t-vn) + alpha3*sin(3*2*pi*F*t-vn) + alpha5*sin(5*2*pi*F*t-vn)); %% Generated Signal
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
xs=[xs; xs_temp(2001:2100,:)];
xs_20 = [xs_20; xs_temp_20(2001:2100,:)];


flag=0;
F = 52;
for vn=-180:180:180
    for alpha=0.1:0.2:0.8
        for t1=0:0.03:0.15
            for k=0.02:0.02:0.06
                for alpha3=0.05:0.03:0.15
                    for alpha5=0.05:0.03:0.15

                        t2=t1+k;

                        x=@(t) sin(2*pi*F*t) + (alpha*(heaviside(t-t1)-heaviside(t-t2))).*(alpha1*sin(1*2*pi*F*t-vn) + alpha3*sin(3*2*pi*F*t-vn) + alpha5*sin(5*2*pi*F*t-vn)); %% Generated Signal
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
xs=[xs; xs_temp(2001:2100,:)];
xs_20 = [xs_20; xs_temp_20(2001:2100,:)];


% shuffling dataset
% Get the number of rows in the matrix
numRows = size(xs, 1);

% Generate a random permutation of row indices
shuffledIndices = randperm(numRows);

% Shuffle the rows of the matrix based on the shuffled indices
xs = xs(shuffledIndices, :);
xs_20 = xs_20(shuffledIndices, :);


% csvwrite('dataset16_20db.csv', xs_20);
% csvwrite("dataset16_freq.csv",xs);
