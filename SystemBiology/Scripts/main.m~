clear all; close all;

%% System Parameters
% production rates (basal/induced) for LacI/TetR mRNA
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

%% Numerical simulation
%Y(1) is XX for XX; Y(2) is XX for XX; Y(3) is XX; Y(4) is XX
Y0= [0 0 0 0];
Tend= 3000;
[T Y]= ode45(@toggle_derivative, 0:0.1:Tend, Y0);
%if XX && XX % LacI wins
%    trajectory_color= 'g'; %green
%elseif XX && XX % TetR wins
%    trajectory_color= 'c'; %blue; cyan actually
%else
%    trajectory_color= 'k'; %black
%end
%% Plotting 
% plotting the protein concentrations as a function of time
figure(1); hold on;
xlabel('time');
ylabel('concentrations');
axis ([0 Tend 0 1500]);
plot(T,Y(:,1),'g'); %LacI mRNA
plot(T,Y(:,2),'c'); %TetR mRNA
plot(T,Y(:,3),'g','LineWidth',3); %LacI 
plot(T,Y(:,4),'c','LineWidth',3); %TetR
legend('LacI mRNA','TetR mRNA','LacI', 'TetR')

pause;
% plotting the trajectory in the state space
%figure(2); hold on;
%xlabel('X')
%ylabel('Y')
%axis ([Xlow Xhigh Ylow Yhigh]);
%plot(X,Y,'*','LineWidth',2,'Color',trajectory_color);

%% Plotting the vector field
%draw_phase_space(p);

%% Plotting many trajectories
%LacI_vector= linspace(0,2000,11);
%TetR_vector= linspace(0,2000,11);
%for i= 1:XX
%    for j= 1:XX
        % comment here: what are mRNAt and mRNAl
%        mRNAt= XX
%        mRNAl= XX
%        [T Y]= ode15s(XX, XX, XX, XX, XX);
%        if XX && XX % LacI wins
%            trajectory_color= 'g'; %green
%        elseif XX && XX % TetR wins
%            trajectory_color= 'c'; %blue; cyan actually
 %       else
 %           trajectory_color= 'k'; %black
%        end
%        plot(X,Y,'LineWidth',1,'Color',trajectory_color);
%    end
%end
