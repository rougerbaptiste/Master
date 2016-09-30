function dydt = toggle_derivative(t,y,p)
%% Deterministic Model of the Toggle Switch
Y0= [0 0 0 0];

kappa_L_m0= 0.0082;
kappa_T_m0= 0.0149;
kappa_L_m= 1;
kappa_T_m= 0.3865; 

% Hill function parameters for LacI/TetR regulation
theta_L= 600;
theta_T= 500;
eta_L= 4; 
eta_T= eta_L;
% dilution rates for LacI/TetR mRNA
gamma_L_m = 0.04;
gamma_T_m = gamma_L_m;
% production rates for LacI/TetR proteins from mRNA
kappa_L_p = 0.1;
kappa_T_p = kappa_L_p;
% dilution rates for LacI/TetR proteins
gamma_L_p = 0.002;
gamma_T_p = gamma_L_p;

p(1)= kappa_L_m0;
p(2)= kappa_T_m0;
p(3)= kappa_L_m;
p(4)= kappa_T_m;
p(5)= theta_L;
p(6)= theta_T;
p(7)= eta_L;
p(8)= eta_T;
p(9)= gamma_L_m;
p(10)= gamma_T_m;
p(11)= kappa_L_p;
p(12)= kappa_T_p;
p(13)= gamma_L_p;
p(14)= gamma_T_p;



dydt= zeros(4,1);

% LacI mRNA
dydt(1) = p(1) + p(3) * 1/(1+(y(4)/p(6))^p(8)) - p(9)*y(1);
% TetR mRNA
dydt(2) = p(2) + p(4) * 1/(1+(y(3)/p(5))^p(7)) - p(10)*y(2);

% LacI
dydt(3) = p(11)*y(1) - p(13)*y(3);
% TetR
dydt(4) = p(12) * y(2) - p(14)*y(4); 

end
