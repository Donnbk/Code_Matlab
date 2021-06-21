% This code is created by Do Ngo-Ngoc (ngongocdobk@gmail.com)  
% Department of Structural Engineering, FCE, HCMUT
% Theory for code: Watch at https://bit.ly/3zDbkYK
clc; close all;
%%
% In put
A = 2;
w1 = 1; k1 = 1  ; phi_01 = 1;
w2 = 2; k2 = 1.1; phi_02 = 2; 
t_start = 0; t_end = 20; dt_iter = 0.1; t_iter = 0;
x_start = -50; x_end = 50; dx_iter = 0.5; x_iter = 0; 
%%
% Create vector for x,f1, f2, f3, T_matrix
n_x = round((x_end-x_start)/dx_iter) + 1; %number of frames
x = zeros(1,n_x); f1 = zeros(1,n_x); f2 = zeros(1,n_x);f3 = zeros(1,n_x);
m_t = round((t_end-t_iter)/dt_iter) + 1;
T_matrix = zeros(m_t,1); f3_t = zeros(m_t,n_x);
%%
% Create a video
video = VideoWriter('waves_v2.avi');
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
    x(i) = x_iter; x_iter = x_iter + dx_iter;
    f1(i) = A*cos(w1*t - k1*x(i) - phi_01); 
    f2(i) = A*cos(w2*t - k2*x(i) - phi_02);
    f3(i) = f1(i) + f2(i);
    f3_t(j,i) = f3(i);
    enve_f3_positive =  2*A*cos( (w1-w2)/2*t - (k1-k2)/2*x - (phi_01-phi_02)/2 );
    enve_f3_negative = -2*A*cos( (w1-w2)/2*t - (k1-k2)/2*x - (phi_01-phi_02)/2 );
% Plot
    clf %clear figure
    subplot(3,1,1)
    axis([0 inf -2 2])
    plot(x(1:i),f1(1:i),'r', 'LineWidth', 1);
    hold on
    xlabel('x','fontweight','bold','fontsize',10); 
    xlim([x_start x_end]);xticks(x_start:10:x_end);
    ylabel('f_{1}','fontweight','bold','fontsize',10); 
    ylim([-3 3]);yticks(-3:1:3);
    title('f_{1}(\phi) = Acos(\omega_{1}t - k_{1}x - \phi_{01}), {\phi}(x,t)');
    hold off
    %
    subplot(3,1,2)
    axis([0 inf -2 2])
    hold on
    plot(x(1:i),f2(1:i),'b', 'LineWidth', 1);
    xlabel('x','fontweight','bold','fontsize',10); 
    xlim([x_start x_end]);xticks(x_start:10:x_end);
    ylabel('f_{2}','fontweight','bold','fontsize',10); 
    ylim([-3 3]);yticks(-3:1:3);
    title('f_{2}(\phi) = Acos(\omega_{2}t - k_{2}x - \phi_{02}), {\phi}(x,t)');
    hold off
    %
    subplot(3,1,3)
    plot(x(1:i),f3(1:i),'k', 'LineWidth', 1);
    hold on
    plot(x(1:i),enve_f3_positive(1:i),'r--', 'LineWidth', 0.75);
    plot(x(1:i),enve_f3_negative(1:i),'b--', 'LineWidth', 0.75);
    %
    xlabel('x','fontweight','bold','fontsize',10); 
    xlim([x_start x_end]);xticks(x_start:10:x_end);
    ylabel('f_{3}','fontweight','bold','fontsize',10); 
    ylim([-5 5]);yticks(-5:1:5);
    title('f_{3}(\phi) = f_{2}(\phi) + f_{1}(\phi), {\phi}(x,t)');
    hold off
    end
    % Point
    subplot(3,1,1)
    hold on
    plot(x(j),f1(j),'k-o','MarkerFaceColor',[1 0 1]); 
    hold off
    %
    subplot(3,1,2)
    hold on
    plot(x(j),f2(j),'k-o','MarkerFaceColor',[1 0 1]); 
    hold off
    %
    subplot(3,1,3)
    hold on
    plot(x(j),f3_t(j,j),'k-o','MarkerFaceColor',[1 0 1]); 
    plot(x(j),enve_f3_positive(j),'k-o','MarkerFaceColor','g');
    hold off
    t_iter = t_iter + dt_iter;
    %
    pause(0.01)
    frame = getframe(gcf); 
    writeVideo(video,frame);
end
close(video);
print('figure_v2','-dpdf');