% function xs = c14_swell_with_oscillatory_transient_freq( )

clc;
clear all;
close all;

count = 0;
t=0:0.0001:.2;
xs = [];
SNR = 20;

flag=0;
F = 50;
for alpha=0.1:0.3:0.8
    for t1=0:0.05:0.15
        for k=0.02:0.02:0.06
            for v=-180:360:180
                for tao=0.008:0.01:0.04
                    for beta=0.222:0.5:1.11
                        for fn=300:300:900

                            t2=t1+k;

                            x=@(t) sin(2*pi*F*t).*(1 + alpha*(heaviside(t-t1)-heaviside(t-t2))) + beta*(exp(-(t-t1)/tao)).*sin(2*fn*pi*(t-t1)-v).*(heaviside(t-t2)-heaviside(t-t1)); %% Generated Signal
                            flag = flag + 1;
                            count = count + 1;

                            % Add 20 dB Gaussian noise to the signal
%                             SNR = 10; % Signal-to-noise ratio in dB
                            x_20 = awgn(x(t), SNR, 'measured');

                            % % visualisation
                            if flag >1001  && flag < 1015
                                figure(flag)
%                                 plot(t,x(t));
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
end

xs = xs_temp(1001:1025,:);
xs = [xs; xs_temp(1501:1525,:)];
xs = [xs; xs_temp(801:825,:)];
xs = [xs; xs_temp(701:725,:)];

xs_20 = xs_temp_20(1001:1025,:);
xs_20 = [xs_20; xs_temp_20(1501:1525,:)];
xs_20 = [xs_20; xs_temp_20(801:825,:)];
xs_20 = [xs_20; xs_temp_20(701:725,:)];

flag=0;
F = 48;
for alpha=0.1:0.3:0.8
    for t1=0:0.05:0.15
        for k=0.02:0.02:0.06
            for v=-180:360:180
                for tao=0.008:0.01:0.04
                    for beta=0.222:0.5:1.11
                        for fn=300:300:900

                            t2=t1+k;

                            x=@(t) sin(2*pi*F*t).*(1 + alpha*(heaviside(t-t1)-heaviside(t-t2))) + beta*(exp(-(t-t1)/tao)).*sin(2*fn*pi*(t-t1)-v).*(heaviside(t-t2)-heaviside(t-t1)); %% Generated Signal
                            flag = flag + 1;
                            count = count + 1;

                            % Add 20 dB Gaussian noise to the signal
%                             SNR = 10; % Signal-to-noise ratio in dB
%                             x_20 = awgn(x(t), SNR, 'measured');

                            % % visualisation
%                             if flag >701  && flag < 725
%                                 figure(flag)
%                                 plot(t,x(t));
% %                                 plot(t,x_20);
%                                 hold on;
%                             end

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
end

xs = [xs; xs_temp(1001:1025,:)];
xs = [xs; xs_temp(1501:1525,:)];
xs = [xs; xs_temp(801:825,:)];
xs = [xs; xs_temp(701:725,:)];

xs_20 = [xs_20; xs_temp_20(1001:1025,:)];
xs_20 = [xs_20; xs_temp_20(1501:1525,:)];
xs_20 = [xs_20; xs_temp_20(801:825,:)];
xs_20 = [xs_20; xs_temp_20(701:725,:)];

flag=0;
F = 48.5;
for alpha=0.1:0.3:0.8
    for t1=0:0.05:0.15
        for k=0.02:0.02:0.06
            for v=-180:360:180
                for tao=0.008:0.01:0.04
                    for beta=0.222:0.5:1.11
                        for fn=300:300:900

                            t2=t1+k;

                            x=@(t) sin(2*pi*F*t).*(1 + alpha*(heaviside(t-t1)-heaviside(t-t2))) + beta*(exp(-(t-t1)/tao)).*sin(2*fn*pi*(t-t1)-v).*(heaviside(t-t2)-heaviside(t-t1)); %% Generated Signal
                            flag = flag + 1;
                            count = count + 1;

                            % Add 20 dB Gaussian noise to the signal
%                             SNR = 10; % Signal-to-noise ratio in dB
%                             x_20 = awgn(x(t), SNR, 'measured');

                            % % visualisation
%                             if flag >701  && flag < 725
%                                 figure(flag)
%                                 plot(t,x(t));
% %                                 plot(t,x_20);
%                                 hold on;
%                             end

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
end

xs = [xs; xs_temp(1001:1025,:)];
xs = [xs; xs_temp(1501:1525,:)];
xs = [xs; xs_temp(801:825,:)];
xs = [xs; xs_temp(701:725,:)];

xs_20 = [xs_20; xs_temp_20(1001:1025,:)];
xs_20 = [xs_20; xs_temp_20(1501:1525,:)];
xs_20 = [xs_20; xs_temp_20(801:825,:)];
xs_20 = [xs_20; xs_temp_20(701:725,:)];

flag=0;
F = 49;
for alpha=0.1:0.3:0.8
    for t1=0:0.05:0.15
        for k=0.02:0.02:0.06
            for v=-180:360:180
                for tao=0.008:0.01:0.04
                    for beta=0.222:0.5:1.11
                        for fn=300:300:900

                            t2=t1+k;

                            x=@(t) sin(2*pi*F*t).*(1 + alpha*(heaviside(t-t1)-heaviside(t-t2))) + beta*(exp(-(t-t1)/tao)).*sin(2*fn*pi*(t-t1)-v).*(heaviside(t-t2)-heaviside(t-t1)); %% Generated Signal
                            flag = flag + 1;
                            count = count + 1;

                            % Add 20 dB Gaussian noise to the signal
%                             SNR = 10; % Signal-to-noise ratio in dB
%                             x_20 = awgn(x(t), SNR, 'measured');

                            % % visualisation
%                             if flag >701  && flag < 725
%                                 figure(flag)
%                                 plot(t,x(t));
% %                                 plot(t,x_20);
%                                 hold on;
%                             end

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
end

xs = [xs; xs_temp(1001:1025,:)];
xs = [xs; xs_temp(1501:1525,:)];
xs = [xs; xs_temp(801:825,:)];
xs = [xs; xs_temp(701:725,:)];

xs_20 = [xs_20; xs_temp_20(1001:1025,:)];
xs_20 = [xs_20; xs_temp_20(1501:1525,:)];
xs_20 = [xs_20; xs_temp_20(801:825,:)];
xs_20 = [xs_20; xs_temp_20(701:725,:)];

flag=0;
F = 49.5;
for alpha=0.1:0.3:0.8
    for t1=0:0.05:0.15
        for k=0.02:0.02:0.06
            for v=-180:360:180
                for tao=0.008:0.01:0.04
                    for beta=0.222:0.5:1.11
                        for fn=300:300:900

                            t2=t1+k;

                            x=@(t) sin(2*pi*F*t).*(1 + alpha*(heaviside(t-t1)-heaviside(t-t2))) + beta*(exp(-(t-t1)/tao)).*sin(2*fn*pi*(t-t1)-v).*(heaviside(t-t2)-heaviside(t-t1)); %% Generated Signal
                            flag = flag + 1;
                            count = count + 1;

                            % Add 20 dB Gaussian noise to the signal
%                             SNR = 10; % Signal-to-noise ratio in dB
%                             x_20 = awgn(x(t), SNR, 'measured');

                            % % visualisation
%                             if flag >701  && flag < 725
%                                 figure(flag)
%                                 plot(t,x(t));
% %                                 plot(t,x_20);
%                                 hold on;
%                             end

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
end

xs = [xs; xs_temp(1001:1025,:)];
xs = [xs; xs_temp(1501:1525,:)];
xs = [xs; xs_temp(801:825,:)];
xs = [xs; xs_temp(701:725,:)];

xs_20 = [xs_20; xs_temp_20(1001:1025,:)];
xs_20 = [xs_20; xs_temp_20(1501:1525,:)];
xs_20 = [xs_20; xs_temp_20(801:825,:)];
xs_20 = [xs_20; xs_temp_20(701:725,:)];

flag=0;
F = 50.5;
for alpha=0.1:0.3:0.8
    for t1=0:0.05:0.15
        for k=0.02:0.02:0.06
            for v=-180:360:180
                for tao=0.008:0.01:0.04
                    for beta=0.222:0.5:1.11
                        for fn=300:300:900

                            t2=t1+k;

                            x=@(t) sin(2*pi*F*t).*(1 + alpha*(heaviside(t-t1)-heaviside(t-t2))) + beta*(exp(-(t-t1)/tao)).*sin(2*fn*pi*(t-t1)-v).*(heaviside(t-t2)-heaviside(t-t1)); %% Generated Signal
                            flag = flag + 1;
                            count = count + 1;

                            % Add 20 dB Gaussian noise to the signal
%                             SNR = 10; % Signal-to-noise ratio in dB
%                             x_20 = awgn(x(t), SNR, 'measured');

                            % % visualisation
%                             if flag >701  && flag < 725
%                                 figure(flag)
%                                 plot(t,x(t));
% %                                 plot(t,x_20);
%                                 hold on;
%                             end

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
end

xs = [xs; xs_temp(1001:1025,:)];
xs = [xs; xs_temp(1501:1525,:)];
xs = [xs; xs_temp(801:825,:)];
xs = [xs; xs_temp(701:725,:)];

xs_20 = [xs_20; xs_temp_20(1001:1025,:)];
xs_20 = [xs_20; xs_temp_20(1501:1525,:)];
xs_20 = [xs_20; xs_temp_20(801:825,:)];
xs_20 = [xs_20; xs_temp_20(701:725,:)];

flag=0;
F = 51;
for alpha=0.1:0.3:0.8
    for t1=0:0.05:0.15
        for k=0.02:0.02:0.06
            for v=-180:360:180
                for tao=0.008:0.01:0.04
                    for beta=0.222:0.5:1.11
                        for fn=300:300:900

                            t2=t1+k;

                            x=@(t) sin(2*pi*F*t).*(1 + alpha*(heaviside(t-t1)-heaviside(t-t2))) + beta*(exp(-(t-t1)/tao)).*sin(2*fn*pi*(t-t1)-v).*(heaviside(t-t2)-heaviside(t-t1)); %% Generated Signal
                            flag = flag + 1;
                            count = count + 1;

                            % Add 20 dB Gaussian noise to the signal
%                             SNR = 10; % Signal-to-noise ratio in dB
%                             x_20 = awgn(x(t), SNR, 'measured');

                            % % visualisation
%                             if flag >701  && flag < 725
%                                 figure(flag)
%                                 plot(t,x(t));
% %                                 plot(t,x_20);
%                                 hold on;
%                             end

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
end

xs = [xs; xs_temp(1001:1025,:)];
xs = [xs; xs_temp(1501:1525,:)];
xs = [xs; xs_temp(801:825,:)];
xs = [xs; xs_temp(701:725,:)];

xs_20 = [xs_20; xs_temp_20(1001:1025,:)];
xs_20 = [xs_20; xs_temp_20(1501:1525,:)];
xs_20 = [xs_20; xs_temp_20(801:825,:)];
xs_20 = [xs_20; xs_temp_20(701:725,:)];

flag=0;
F = 51.5;
for alpha=0.1:0.3:0.8
    for t1=0:0.05:0.15
        for k=0.02:0.02:0.06
            for v=-180:360:180
                for tao=0.008:0.01:0.04
                    for beta=0.222:0.5:1.11
                        for fn=300:300:900

                            t2=t1+k;

                            x=@(t) sin(2*pi*F*t).*(1 + alpha*(heaviside(t-t1)-heaviside(t-t2))) + beta*(exp(-(t-t1)/tao)).*sin(2*fn*pi*(t-t1)-v).*(heaviside(t-t2)-heaviside(t-t1)); %% Generated Signal
                            flag = flag + 1;
                            count = count + 1;

                            % Add 20 dB Gaussian noise to the signal
%                             SNR = 10; % Signal-to-noise ratio in dB
%                             x_20 = awgn(x(t), SNR, 'measured');

                            % % visualisation
%                             if flag >701  && flag < 725
%                                 figure(flag)
%                                 plot(t,x(t));
% %                                 plot(t,x_20);
%                                 hold on;
%                             end

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
end

xs = [xs; xs_temp(1001:1025,:)];
xs = [xs; xs_temp(1501:1525,:)];
xs = [xs; xs_temp(801:825,:)];
xs = [xs; xs_temp(701:725,:)];

xs_20 = [xs_20; xs_temp_20(1001:1025,:)];
xs_20 = [xs_20; xs_temp_20(1501:1525,:)];
xs_20 = [xs_20; xs_temp_20(801:825,:)];
xs_20 = [xs_20; xs_temp_20(701:725,:)];

flag=0;
F = 52;
for alpha=0.1:0.3:0.8
    for t1=0:0.05:0.15
        for k=0.02:0.02:0.06
            for v=-180:360:180
                for tao=0.008:0.01:0.04
                    for beta=0.222:0.5:1.11
                        for fn=300:300:900

                            t2=t1+k;

                            x=@(t) sin(2*pi*F*t).*(1 + alpha*(heaviside(t-t1)-heaviside(t-t2))) + beta*(exp(-(t-t1)/tao)).*sin(2*fn*pi*(t-t1)-v).*(heaviside(t-t2)-heaviside(t-t1)); %% Generated Signal
                            flag = flag + 1;
                            count = count + 1;

                            % Add 20 dB Gaussian noise to the signal
%                             SNR = 10; % Signal-to-noise ratio in dB
%                             x_20 = awgn(x(t), SNR, 'measured');

                            % % visualisation
%                             if flag >701  && flag < 725
%                                 figure(flag)
%                                 plot(t,x(t));
% %                                 plot(t,x_20);
%                                 hold on;
%                             end

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


% csvwrite('dataset14_20db.csv', xs_20);


% csvwrite("dataset14_freq.csv",xs);
