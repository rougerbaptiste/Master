% prey : number of preys
% pred : number of predators
% lambdaPrey : growth of the prey
% n.prey + pred -> lambdaPred . 2. pred
% predators can die at a delta rate.

%%%%%%%%%%
% Here we can define the parameters

prey = 200; % Initial number of preys
pred = 2; % Initial number of predators
lambdaPrey = (1/(2*2))*6; % We assume that 2 rabbits have 8 rabbits every 2 mounths
lambdaPred = (1/(2*6))*4; %It takes 6 mounth to the wolves to produce 4 puppy
n = 200; % number of rabbits needed to produce the puppies
deltaPred = 1/240; % the rate at which the predators die (so each 240 mounths)
deltaPrey = 1/60; % the rate at which the preys die (so each 60 mounths)
TSpan = 3; % The length of the simulation in mounths.


%%%%%%%%%%
% Here we define some useful variables for the simulation
dPrey = 0;
dPred = 0;
preys = zeros(TSpan+1,1);
preds = zeros(TSpan+1,1);

preys(1) = prey;
preds(1) = pred;

%%%%%%%%%
% Now we enter the simulation loop

for i=1:TSpan
	dPrey = prey + prey*lambdaPrey; % compute the born preys
	dPrey = dPrey - pred*lambdaPred*n; % compute the eaten preys

	dPred = pred + pred*lambdaPred; % compute the born predators

	dPred = dPred - pred*deltaPred; % compute the dead predators
	dPrey = dPrey - prey*deltaPrey; % compute the dead preys

	%%%%%
	% Here we store our variable for the next iteration of the loop and the plot
	prey = dPrey;
	pred = dPred;
	preys(i+1) = prey;
	preds(i+1) = pred;
end

absc = 0:TSpan; % a vector that contains the mounths of the simulation

%%%%%%%%%%
% Now we plot the result
subplot(2,1,1)
plot(absc,preys,'r--');
hold on;
subplot(2,1,2)
plot(absc,preds,'b--');

pause;
