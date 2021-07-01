function subplot3 = subplot_wave3(i,x,f3,x_start,x_end,enve_f3_positive,enve_f3_negative)
    plot(x(1:i),f3(1:i),'k', 'LineWidth', 1);
    hold on
    plot(x(1:i),enve_f3_positive(1:i),'r--', 'LineWidth', 0.75);
    plot(x(1:i),enve_f3_negative(1:i),'b--', 'LineWidth', 0.75);
    %
    xlabel('x','fontweight','bold','fontsize',10); 
    xlim([x_start x_end]);xticks(x_start:10:x_end);
    ylabel('f_{3}','fontweight','bold','fontsize',10); 
    ylim([-5 5]);yticks(-5:1:5);
    title('f_{3}(\phi) = f_{2}(\phi) + f_{1}(\phi), {\phi}(x,t)','FontSize', 10);
    hold off
end