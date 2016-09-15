%This is a MATLAB code to simulate a toy model,

% It has 3 variables: a,b and c. with the following reactions:

    % synthesis
    % -> 2 * a;    at rate:    k_a

    % reversible bi-molecular conversion
    % a + b <-> c;  at forward rate:    k_ab * a * b
    %               at backward rate:   k_c * c

     % degradation
    % c ->;    at rate:    k_deg * c


    % c ->;    at rate:    k_deg * c
    % c ->;    at rate:    k_deg * c



% Define the Parameters
k_a   = 1;
k_ab  = 0.1;
k_c   = 1;
k_deg = 0.01;

% Initial values for a,b,c
a = 100;
b = 100;
c = 0;

% Duration of the simulation [Units must be the same than the rate constants']
TSpan = 100;

% Pick a timestep
dt = 0.001;

% Compute number of steps
NSteps = TSpan / dt;

% Initialize vectors to store variables for each timestep
a_vec = zeros(NSteps , 1);
b_vec = zeros(NSteps , 1);
c_vec = zeros(NSteps , 1);

% Create the corresponding time vector
t_vec = 0:dt:(TSpan - dt);

% Simulation of the model
for i = 1 : NSteps

    % Store variables values for each time step into dedicated vectors
    a_vec(i) = a;
    b_vec(i) = b;   
    c_vec(i) = c;

    % initialize the rates of change for each variable with 0
    da    = 0;
    db    = 0;
    dc    = 0;

    % for each reaction - add up contributions to rates of changes

    % synthesis
    % -> 2 * a;    at rate:    k_a
    v_1 = k_a;
    da  = da + 2 * v_1;

    % reversible bi-molecular conversion
    % a + b <-> c;  at forward rate:    k_ab * a * b
    %               at backward rate:   k_c * c
    v_2 = k_ab * a * b - k_c * c;
    da = da - v_2;
    db = db - v_2;
    dc = dc + v_2;

    % degradation
    % c ->;    at rate:    k_deg * c
    v_3 = k_deg * c;
    dc = dc - v_3;

    % Update all the variables
    a = a + da * dt;
    b = b + db * dt;
    c = c + dc * dt;

end

figure(1)
subplot(3 , 1 , 1)
plot(t_vec , a_vec)
ylabel('a', 'fontsize', 14);

subplot(3 , 1 , 2)
plot(t_vec , b_vec)
ylabel('b', 'fontsize', 14);

subplot(3 , 1 , 3)
plot(t_vec , c_vec)
ylabel('c', 'fontsize', 14);
xlabel('Time' , 'fontsize' , 14);

pause;
