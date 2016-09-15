% prey : number of preys
% pred : number of predators
% lambdaPrey : growth of the prey
% n.prey + pred -> lambdaPred . 2. pred
% predators can die at a delta rate.

%%%%%%%%%%
% Here we can define the parameters

prey = 10 000; % Initial number of preys
pred = 10; % Initial number of predators
lambdaPrey = (1/(2*2))*8; % We assume that 2 rabbits have 8 rabbits every 2 mounths
lambdaPred = (1/(2*6))*4; %It takes 6 mounth to the wolves to produce 4 puppy
n = 100;
deltaPred = 1/120;
deltaPrey = 1/60;
TSpan = 100; % The length of the simulation in mounths.

%%%%%%%%%%
% Here we define some useful variables for the simulation
dPrey = 0;
dPred = 0;
preys = zeros(TSpan);
preds = zeros(TSpam);

preys(1) = prey;
preds(1) = pred;

for i=1:100
	dPrey = prey + prey*lambdaPrey;
	dPrey = dPrey - prey*lambdaPred*n;
	dPred = pred + pred*lambdaPred;
	dPred = dPred - pred*deltaPred;
	

	prey = dPrey;
	pred = dPred;
	preys(i+1) = prey;
	preds(i+1) = pred;
end
