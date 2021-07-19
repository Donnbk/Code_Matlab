function func_format_f3(x_start,x_end)
xlabel('x','fontweight','bold','fontsize',10); 
xlim([x_start x_end]);xticks(x_start:10:x_end);
ylabel('f_{3}','fontweight','bold','fontsize',10); 
ylim([-5 5]);yticks(-5:1:5);
title('f_{3}(\phi) = f_{2}(\phi) + f_{1}(\phi), {\phi}(x,t)','FontSize', 10);
hold off
end
