% function xs = c18_harmonics_with_sag_with_flicker_freq( )

clc;
clear;
close all;

SNR = 20;
t=0:0.0001:.2;
alpha = 0.7;
k = 0.05;
count = 0;

F = 50;
flag=0;
for vn=-180:180:180
    for t1=0:0.05:0.15
        for alpha3=0.05:0.05:0.15
            for alpha5=0.05:0.05:0.15
                for lamda=0.05:0.01:0.1
                    for fn=8:4:25

                        t2=t1+k;

                        x=@(t) (1 + lamda* sin(2*pi*fn*t)).*(sin(2*pi*F*t) + (alpha3*sin(3*2*pi*F*t-vn) + alpha5*sin(5*2*pi*F*t-vn))) .* (1 - alpha*(heaviside(t-t1)-heaviside(t-t2))); %% Generated Signal
                        flag = flag + 1;
                        count = count + 1;

                        % Add 20 dB Gaussian noise to the signal
                        SNR = 20; % Signal-to-noise ratio in dB
                        x_20 = awgn(x(t), SNR, 'measured');

                        % % visualisation
                        if flag > 701 && flag < 703
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

xs = xs_temp(1001:1025,:);
xs = [xs; xs_temp(1501:1525,:)];
xs = [xs; xs_temp(801:825,:)];
xs = [xs; xs_temp(701:725,:)];

xs_20 = xs_temp_20(1001:1025,:);
xs_20 = [xs_20; xs_temp_20(1501:1525,:)];
xs_20 = [xs_20; xs_temp_20(801:825,:)];
xs_20 = [xs_20; xs_temp_20(701:725,:)];


F = 48;
flag=0;
for vn=-180:180:180
    for t1=0:0.05:0.15
        for alpha3=0.05:0.05:0.15
            for alpha5=0.05:0.05:0.15
                for lamda=0.05:0.01:0.1
                    for fn=8:4:25

                        t2=t1+k;

                        x=@(t) (1 + lamda* sin(2*pi*fn*t)).*(sin(2*pi*F*t) + (alpha3*sin(3*2*pi*F*t-vn) + alpha5*sin(5*2*pi*F*t-vn))) .* (1 - alpha*(heaviside(t-t1)-heaviside(t-t2))); %% Generated Signal
                        flag = flag + 1;
                        count = count + 1;

                       % Add 20 dB Gaussian noise to the signal
                        SNR = 20; % Signal-to-noise ratio in dB
                        x_20 = awgn(x(t), SNR, 'measured');

                        % % visualisation
%                         if flag > 701 && flag < 703
%                             figure(flag)
% %                             plot(t,x(t));
%                             plot(t,x_20);
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

xs = [xs; xs_temp(1001:1025,:)];
xs = [xs; xs_temp(1501:1525,:)];
xs = [xs; xs_temp(801:825,:)];
xs = [xs; xs_temp(701:725,:)];

xs_20 = [xs_20; xs_temp_20(1001:1025,:)];
xs_20 = [xs_20; xs_temp_20(1501:1525,:)];
xs_20 = [xs_20; xs_temp_20(801:825,:)];
xs_20 = [xs_20; xs_temp_20(701:725,:)];

F = 48.5;
flag=0;
for vn=-180:180:180
    for t1=0:0.05:0.15
        for alpha3=0.05:0.05:0.15
            for alpha5=0.05:0.05:0.15
                for lamda=0.05:0.01:0.1
                    for fn=8:4:25

                        t2=t1+k;

                        x=@(t) (1 + lamda* sin(2*pi*fn*t)).*(sin(2*pi*F*t) + (alpha3*sin(3*2*pi*F*t-vn) + alpha5*sin(5*2*pi*F*t-vn))) .* (1 - alpha*(heaviside(t-t1)-heaviside(t-t2))); %% Generated Signal
                        flag = flag + 1;
                        count = count + 1;

                        % Add 20 dB Gaussian noise to the signal
                        SNR = 20; % Signal-to-noise ratio in dB
                        x_20 = awgn(x(t), SNR, 'measured');

                        % % visualisation
%                         if flag > 701 && flag < 703
%                             figure(flag)
% %                             plot(t,x(t));
%                             plot(t,x_20);
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

xs = [xs; xs_temp(1001:1025,:)];
xs = [xs; xs_temp(1501:1525,:)];
xs = [xs; xs_temp(801:825,:)];
xs = [xs; xs_temp(701:725,:)];

xs_20 = [xs_20; xs_temp_20(1001:1025,:)];
xs_20 = [xs_20; xs_temp_20(1501:1525,:)];
xs_20 = [xs_20; xs_temp_20(801:825,:)];
xs_20 = [xs_20; xs_temp_20(701:725,:)];

F = 49;
flag=0;
for vn=-180:180:180
    for t1=0:0.05:0.15
        for alpha3=0.05:0.05:0.15
            for alpha5=0.05:0.05:0.15
                for lamda=0.05:0.01:0.1
                    for fn=8:4:25

                        t2=t1+k;

                        x=@(t) (1 + lamda* sin(2*pi*fn*t)).*(sin(2*pi*F*t) + (alpha3*sin(3*2*pi*F*t-vn) + alpha5*sin(5*2*pi*F*t-vn))) .* (1 - alpha*(heaviside(t-t1)-heaviside(t-t2))); %% Generated Signal
                        flag = flag + 1;
                        count = count + 1;

                        % Add 20 dB Gaussian noise to the signal
                        SNR = 20; % Signal-to-noise ratio in dB
                        x_20 = awgn(x(t), SNR, 'measured');

                        % % visualisation
%                         if flag > 701 && flag < 703
%                             figure(flag)
% %                             plot(t,x(t));
%                             plot(t,x_20);
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

xs = [xs; xs_temp(1001:1025,:)];
xs = [xs; xs_temp(1501:1525,:)];
xs = [xs; xs_temp(801:825,:)];
xs = [xs; xs_temp(701:725,:)];

xs_20 = [xs_20; xs_temp_20(1001:1025,:)];
xs_20 = [xs_20; xs_temp_20(1501:1525,:)];
xs_20 = [xs_20; xs_temp_20(801:825,:)];
xs_20 = [xs_20; xs_temp_20(701:725,:)];

F = 49.5;
flag=0;
for vn=-180:180:180
    for t1=0:0.05:0.15
        for alpha3=0.05:0.05:0.15
            for alpha5=0.05:0.05:0.15
                for lamda=0.05:0.01:0.1
                    for fn=8:4:25

                        t2=t1+k;

                        x=@(t) (1 + lamda* sin(2*pi*fn*t)).*(sin(2*pi*F*t) + (alpha3*sin(3*2*pi*F*t-vn) + alpha5*sin(5*2*pi*F*t-vn))) .* (1 - alpha*(heaviside(t-t1)-heaviside(t-t2))); %% Generated Signal
                        flag = flag + 1;
                        count = count + 1;

                       % Add 20 dB Gaussian noise to the signal
                        SNR = 20; % Signal-to-noise ratio in dB
                        x_20 = awgn(x(t), SNR, 'measured');

                        % % visualisation
%                         if flag > 701 && flag < 703
%                             figure(flag)
% %                             plot(t,x(t));
%                             plot(t,x_20);
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

xs = [xs; xs_temp(1001:1025,:)];
xs = [xs; xs_temp(1501:1525,:)];
xs = [xs; xs_temp(801:825,:)];
xs = [xs; xs_temp(701:725,:)];

xs_20 = [xs_20; xs_temp_20(1001:1025,:)];
xs_20 = [xs_20; xs_temp_20(1501:1525,:)];
xs_20 = [xs_20; xs_temp_20(801:825,:)];
xs_20 = [xs_20; xs_temp_20(701:725,:)];

F = 50.5;
flag=0;
for vn=-180:180:180
    for t1=0:0.05:0.15
        for alpha3=0.05:0.05:0.15
            for alpha5=0.05:0.05:0.15
                for lamda=0.05:0.01:0.1
                    for fn=8:4:25

                        t2=t1+k;

                        x=@(t) (1 + lamda* sin(2*pi*fn*t)).*(sin(2*pi*F*t) + (alpha3*sin(3*2*pi*F*t-vn) + alpha5*sin(5*2*pi*F*t-vn))) .* (1 - alpha*(heaviside(t-t1)-heaviside(t-t2))); %% Generated Signal
                        flag = flag + 1;
                        count = count + 1;

                        % Add 20 dB Gaussian noise to the signal
                        SNR = 20; % Signal-to-noise ratio in dB
                        x_20 = awgn(x(t), SNR, 'measured');

                        % % visualisation
%                         if flag > 701 && flag < 703
%                             figure(flag)
% %                             plot(t,x(t));
%                             plot(t,x_20);
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

xs = [xs; xs_temp(1001:1025,:)];
xs = [xs; xs_temp(1501:1525,:)];
xs = [xs; xs_temp(801:825,:)];
xs = [xs; xs_temp(701:725,:)];

xs_20 = [xs_20; xs_temp_20(1001:1025,:)];
xs_20 = [xs_20; xs_temp_20(1501:1525,:)];
xs_20 = [xs_20; xs_temp_20(801:825,:)];
xs_20 = [xs_20; xs_temp_20(701:725,:)];

F = 51;
flag=0;
for vn=-180:180:180
    for t1=0:0.05:0.15
        for alpha3=0.05:0.05:0.15
            for alpha5=0.05:0.05:0.15
                for lamda=0.05:0.01:0.1
                    for fn=8:4:25

                        t2=t1+k;

                        x=@(t) (1 + lamda* sin(2*pi*fn*t)).*(sin(2*pi*F*t) + (alpha3*sin(3*2*pi*F*t-vn) + alpha5*sin(5*2*pi*F*t-vn))) .* (1 - alpha*(heaviside(t-t1)-heaviside(t-t2))); %% Generated Signal
                        flag = flag + 1;
                        count = count + 1;

                        % Add 20 dB Gaussian noise to the signal
                        SNR = 20; % Signal-to-noise ratio in dB
                        x_20 = awgn(x(t), SNR, 'measured');

                        % % visualisation
%                         if flag > 701 && flag < 703
%                             figure(flag)
% %                             plot(t,x(t));
%                             plot(t,x_20);
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

xs = [xs; xs_temp(1001:1025,:)];
xs = [xs; xs_temp(1501:1525,:)];
xs = [xs; xs_temp(801:825,:)];
xs = [xs; xs_temp(701:725,:)];

xs_20 = [xs_20; xs_temp_20(1001:1025,:)];
xs_20 = [xs_20; xs_temp_20(1501:1525,:)];
xs_20 = [xs_20; xs_temp_20(801:825,:)];
xs_20 = [xs_20; xs_temp_20(701:725,:)];

F = 51.5;
flag=0;
for vn=-180:180:180
    for t1=0:0.05:0.15
        for alpha3=0.05:0.05:0.15
            for alpha5=0.05:0.05:0.15
                for lamda=0.05:0.01:0.1
                    for fn=8:4:25

                        t2=t1+k;

                        x=@(t) (1 + lamda* sin(2*pi*fn*t)).*(sin(2*pi*F*t) + (alpha3*sin(3*2*pi*F*t-vn) + alpha5*sin(5*2*pi*F*t-vn))) .* (1 - alpha*(heaviside(t-t1)-heaviside(t-t2))); %% Generated Signal
                        flag = flag + 1;
                        count = count + 1;

                        % Add 20 dB Gaussian noise to the signal
                        SNR = 20; % Signal-to-noise ratio in dB
                        x_20 = awgn(x(t), SNR, 'measured');

                        % % visualisation
%                         if flag > 701 && flag < 703
%                             figure(flag)
% %                             plot(t,x(t));
%                             plot(t,x_20);
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

xs = [xs; xs_temp(1001:1025,:)];
xs = [xs; xs_temp(1501:1525,:)];
xs = [xs; xs_temp(801:825,:)];
xs = [xs; xs_temp(701:725,:)];

xs_20 = [xs_20; xs_temp_20(1001:1025,:)];
xs_20 = [xs_20; xs_temp_20(1501:1525,:)];
xs_20 = [xs_20; xs_temp_20(801:825,:)];
xs_20 = [xs_20; xs_temp_20(701:725,:)];

F = 52;
flag=0;
for vn=-180:180:180
    for t1=0:0.05:0.15
        for alpha3=0.05:0.05:0.15
            for alpha5=0.05:0.05:0.15
                for lamda=0.05:0.01:0.1
                    for fn=8:4:25

                        t2=t1+k;

                        x=@(t) (1 + lamda* sin(2*pi*fn*t)).*(sin(2*pi*F*t) + (alpha3*sin(3*2*pi*F*t-vn) + alpha5*sin(5*2*pi*F*t-vn))) .* (1 - alpha*(heaviside(t-t1)-heaviside(t-t2))); %% Generated Signal
                        flag = flag + 1;
                        count = count + 1;

                        % Add 20 dB Gaussian noise to the signal
                        SNR = 20; % Signal-to-noise ratio in dB
                        x_20 = awgn(x(t), SNR, 'measured');

                        % % visualisation
%                         if flag > 701 && flag < 703
%                             figure(flag)
% %                             plot(t,x(t));
%                             plot(t,x_20);
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

xs = [xs; xs_temp(1001:1025,:)];
xs = [xs; xs_temp(1501:1525,:)];
xs = [xs; xs_temp(801:825,:)];
xs = [xs; xs_temp(701:725,:)];

xs_20 = [xs_20; xs_temp_20(1001:1025,:)];
xs_20 = [xs_20; xs_temp_20(1501:1525,:)];
xs_20 = [xs_20; xs_temp_20(801:825,:)];
xs_20 = [xs_20; xs_temp_20(701:725,:)];


% shuffling dataset
% Get the number of rows in the matrix
numRows = size(xs, 1);

% Generate a random permutation of row indices
shuffledIndices = randperm(numRows);

% Shuffle the rows of the matrix based on the shuffled indices
xs = xs(shuffledIndices, :);
xs_20 = xs_20(shuffledIndices, :);


% csvwrite('dataset18_20db.csv', xs_20);
% csvwrite("dataset18_freq.csv",xs);
