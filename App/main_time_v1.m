% This code is created by Do Ngo-Ngoc (ngongocdobk@gmail.com)  
% Department of Structural Engineering, FCE, HCMUT
% Theory for code: Watch at https://bit.ly/3zDbkYK
clc; close all;
%%
% In put
A = 2;
vp1 = 1; vp2 = -0.75;
lamda_1 = 0.8*pi(); lamda_2 = pi();
w1 = vp1*2*pi()/lamda_1; k1 = 2*pi()/lamda_1; phi_01 = 0;
w2 = vp2*2*pi()/lamda_2; k2 = 2*pi()/lamda_2; phi_02 = 0; 
t_start =   0; t_end =  0.2; dt_iter =     0.1; t_iter = 0;
x_start = -20; x_end = 20; dx_iter = dt_iter; x_iter = 0; 
%% Initializing
% Create vector for x, f1, f2, f3, T_matrix
n_x = round((x_end-x_start)/dx_iter) + 1; %number of frames
m_t = round((t_end-t_iter)/dt_iter) + 1;
x = zeros(1,n_x); 
f1 = zeros(m_t,n_x); f2 = zeros(m_t,n_x); f3 = zeros(m_t,n_x);
enve_f3_positive = zeros(m_t,n_x); enve_f3_negative = zeros(m_t,n_x);
T_matrix = zeros(m_t,1); Mi_envef3_max = zeros(m_t,1);
x_P1 = zeros(1,m_t); f1_vp = zeros(1,m_t);
x_P2 = zeros(1,m_t); f2_vp = zeros(1,m_t);
x_P3 = zeros(1,m_t); f3_vp = zeros(1,m_t);
%% Create matrix for the values of wave functions
t_iter = t_start;
for j = 1:m_t
    t = t_iter;
    T_matrix(j,1) = t;
    x_iter = x_start;
    for i=1:n_x
% Calculation with the wave functions 
    x(i) = x_iter; 
    x_iter = x_iter + dx_iter;
    f1(j,i) = A*cos(w1*t - k1*x(i) - phi_01); 
    f2(j,i) = A*cos(w2*t - k2*x(i) - phi_02);
    f3(j,i) = f1(j,i) + f2(j,i);
    enve_f3_positive(j,i) =  2*A*cos( (w1-w2)/2*t - (k1-k2)/2*x(i) - (phi_01-phi_02)/2 );
    enve_f3_negative(j,i) = -2*A*cos( (w1-w2)/2*t - (k1-k2)/2*x(i) - (phi_01-phi_02)/2 );
    % Phase velocity and Group velocity
    x_P1(j) = (w1)/(k1)*t;    
    x_P2(j) = (w2)/(k2)*t;    
    x_P3(j) = (w1+w2)/(k1+k2)*t;
    f1_vp(j) = A*cos(k1*x_P1(j)-w1*t - phi_01);
    f2_vp(j) = A*cos(k2*x_P2(j)-w2*t - phi_02);
    f3_vp(j) = 2*A*cos( (w1-w2)/2*t - (k1-k2)/2*x_P3(j) - (phi_01-phi_02)/2 );
    end
    %
    [p_envef3_max,i_envef3_max] = max(enve_f3_positive(j,1:i));
    Mi_envef3_max(j) = i_envef3_max;
    %
    t_iter = t_iter + dt_iter;   
end
%% Plot functions of waves 
% Set figure
figsim = figure('Position',[200 200 800 800]);
for j = 1:m_t
    for i=1:n_x
% Plot
    clf %clear figure
    % Line
    subplot(3,1,1)
        plot(x(1:i),f1(j,1:i),'r', 'LineWidth', 1);
        func_format_f1(x_start,x_end,j,T_matrix)
   %
    subplot(3,1,2)
        plot(x(1:i),f2(j,1:i),'b', 'LineWidth', 1);
        func_format_f2(x_start,x_end)
    %
    subplot(3,1,3)
        plot(x(1:i),f3(j,1:i),'k', 'LineWidth', 1);
        hold on
        plot(x(1:i),enve_f3_positive(j,1:i),'r--', 'LineWidth', 0.75);
        plot(x(1:i),enve_f3_negative(j,1:i),'b--', 'LineWidth', 0.75);
        %
        func_format_f3(x_start,x_end)
    end
    % Point
    subplot(3,1,1)
        hold on
        plot(x_P1(j),f1_vp(j),'k-o','MarkerFaceColor','m'); 
        hold off
    %
    subplot(3,1,2)
        hold on
        plot(x_P2(j),f2_vp(j),'k-o','MarkerFaceColor','m') 
        hold off
    %
    subplot(3,1,3)
        hold on
        plot(x(Mi_envef3_max(j)),enve_f3_positive(j,Mi_envef3_max(j)),'k-s','MarkerFaceColor','r');
        %plot(dw/dk*t,2*A,'k-s','MarkerFaceColor','k');
        %
        plot(x_P3(j),f3_vp(j),'k-o','MarkerFaceColor','g');     
        hold off
    %
    fig_frame = "frame_" + num2str(j);
    print(figsim,fig_frame,'-dpng');
end
%% Create the video
% Load the images
n_File = j;
images = cell(n_File,1);
for i = 1: n_File
    images{i} = imread("frame_"+num2str(i)+".png");
end
video = VideoWriter('Simulation_Waves.avi','Uncompressed AVI');
% Open the video writer
open(video);
% Write the frames to the video
for u=1:length(images)
    writeVideo(video, images{u});
end
% Close the video
close(video);