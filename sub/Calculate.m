function Calculation = Calculate(i,j,t,x_iter,dx_iter,A,w1,w2,k1,k2,phi_01,phi_02) 
x(i) = x_iter; 
x_iter = x_iter + dx_iter;
f1(i) = A*cos(w1*t - k1*x(i) - phi_01); 
f2(i) = A*cos(w2*t - k2*x(i) - phi_02);
f3(i) = f1(i) + f2(i);
enve_f3_positive =  2*A*cos( (w1-w2)/2*t - (k1-k2)/2*x - (phi_01-phi_02)/2 );
enve_f3_negative = -2*A*cos( (w1-w2)/2*t - (k1-k2)/2*x - (phi_01-phi_02)/2 );
% Phase velocity and Group velocity
x_P1(j) = (w1)/(k1)*t;    
x_P2(j) = (w2)/(k2)*t;    
x_P3(j) = (w1+w2)/(k1+k2)*t;
f1_vp(j) = A*cos(k1*x_P1(j)-w1*t);
f2_vp(j) = A*cos(k2*x_P2(j)-w2*t);
f3_vp = 2*A*cos( (w1-w2)/2*t - (k1-k2)/2*x_P3 - (phi_01-phi_02)/2 );
end