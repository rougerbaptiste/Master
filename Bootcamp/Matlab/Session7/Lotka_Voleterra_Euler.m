%% Clear the workspace
clear all;

%% set simulation time
tfinal = 1e4;                              % final time

%% set time step and number of step
dt = 0.001;
Nt = tfinal / dt;

%% set parameters

k = struct();

k.alpha = 0.005;    % Reproductive rate of specie a (the prey)
k.beta  = 0.02;     % Rate at which predation occurs (prey per predator per minute)
k.delta = 0.004;    % Dying rate of the predator
k.n     = 100;      % Number of preys needed for one predator to reproduce

%% set initial values for prey and predators
a      = 1e2;
b      = 1;

%% Initialize vector in which we will store the dynamics of the model
a_vec = zeros(Nt , 1);
b_vec = zeros(Nt , 1);
t_vec = zeros(Nt , 1);

% Initial time set to 0
t = 0;

%% simulate
for i = 1 : Nt

    % Stock current values of a and b in a vector so we can see their
    % dynamics later on.
    a_vec(i) = a;
    b_vec(i) = b;
    t_vec(i) = t;

    %% initialize the rates of change for each variable with 0
    dadt    = 0;
    dbdt    = 0;

    %% for each reaction - add up contributions to rates of changes
    % Prey Reproduction
    % a -> 2 * a;    at rate:    k.alpha
    v1   = 2 * k.alpha * a;
    dadt = dadt + v1;

    % Predator eating and reproducting
    % a + b -> 1 / n * b; at rate:	  k.beta
    v2   = k.beta * a * b;
    dadt = dadt - v2;
    dbdt = dbdt + 1 / k.n * v2;

    % Predator dying
    % b -> ; 	  at rate: 	 k.delta
    v3   = k.delta * b;
    dbdt = dbdt - v3;

    %% Update value for each variable
    a = a + dadt * dt;
    b = b + dbdt * dt;
    t = t + dt;

end

%% plot results
figure(1); clf;
subplot(2,1,1)
plot(t_vec,a_vec); ylabel('a', 'fontsize', 14);

subplot(2,1,2)
plot(t_vec,b_vec); ylabel('b', 'fontsize', 14);
xlabel('Time' , 'fontsize' , 14);
