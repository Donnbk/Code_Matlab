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
t_start = 0; t_end =  0.1; dt_iter =     0.1; t_iter = 0;
x_start = -20; x_end = 20; dx_iter = dt_iter; x_iter = 0; 
%%
% Create vector for x, f1, f2, f3, T_matrix
n_x = round((x_end-x_start)/dx_iter) + 1; %number of frames
x = zeros(1,n_x); 
f1 = zeros(1,n_x); f2 = zeros(1,n_x); f3 = zeros(1,n_x);
m_t = round((t_end-t_iter)/dt_iter) + 1;
T_matrix = zeros(m_t,1); 
x_P1 = zeros(1,m_t); f1_vp = zeros(1,m_t);
x_P2 = zeros(1,m_t); f2_vp = zeros(1,m_t);
x_P3 = zeros(1,m_t); f3_vp = zeros(1,m_t);
%%
% Create a video
video = VideoWriter('waves_v3.avi');
open(video);
% Set figure
figure('Position',[200 200 800 800]);
t_iter = t_start;
for j = 1:m_t
    t = t_iter;
    T_matrix(j,1) = t;
    x_iter = x_start;
    for i=1:n_x
% Calculation with the wave functions 
    Calculate(i,j,t,x_iter,dx_iter,A,w1,w2,k1,k2,phi_01,phi_02) 
% Plot
    clf %clear figure
    % Line
    subplot(3,1,1)
        subplot_wave1(i,t,x,f1,x_start,x_end);
    subplot(3,1,2)
        subplot_wave2(i,x,f2,x_start,x_end);
    subplot(3,1,3)
        subplot_wave3(i,x,f3,x_start,x_end,enve_f3_positive,enve_f3_negative);
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
        [p_envef3_max,i_envef3_max] = max(enve_f3_positive);
        plot(x(i_envef3_max),enve_f3_positive(i_envef3_max),'k-s','MarkerFaceColor','r');
        %plot(dw/dk*t,2*A,'k-s','MarkerFaceColor','k');
        %
        plot(x_P3(j),f3_vp(j),'k-o','MarkerFaceColor','g');     
        hold off
    t_iter = t_iter + dt_iter;
    %
    pause(0.1)
    frame = getframe(gcf); 
    writeVideo(video,frame);
end
close(video);
print('figure_v3','-dpdf');