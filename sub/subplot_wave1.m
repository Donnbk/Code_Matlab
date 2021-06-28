function subplot1 = subplot_wave1(i,t,x,f1,x_start,x_end)
    axis([0 inf -2 2])
    plot(x(1:i),f1(1:i),'r', 'LineWidth', 1);
    hold on
    %
    xlabel('x','fontweight','bold','fontsize',10); 
    xlim([x_start x_end]);xticks(x_start:10:x_end);
    ylabel('f_{1}','fontweight','bold','fontsize',10); 
    ylim([-3 3]);yticks(-3:1:3);
    title("\color{red}t = " + num2str(t), 'FontSize', 16);  
    subtitle('f_{1}(\phi) = Acos(\omega_{1}t - k_{1}x - \phi_{01}), {\phi}(x,t)','fontweight','bold','FontSize', 10);
    hold off
end