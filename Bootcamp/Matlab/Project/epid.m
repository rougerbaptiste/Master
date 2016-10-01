clear all;

Ntot = 50;

%%%%
% We create a vector that will contain the number of mononucleosed at each time for each simulation

mononucleosed = zeros(1000,6)';
mononucleosed(:,1)=1;

for i2= 1:1000
    %%%%
    % Sickness contains boolean of if the individuals are infected or not
    sickness = zeros(Ntot,1)';
    sickness(1) = 1; % One of the students is infected

    immuned = zeros(Ntot,1)'; % immuned contains if the students are immuned or not.
    
    i=2;
    while(sum(sickness ~= 0)) % We run the simulation as long as there is someone sick

        for i3 = 1:Ntot % We check for every students if they recover for the disease
             if sickness(i3)==1
                test = rand()<0.1;
                if test ==1
                    sickness(i3) = 0;
                    immuned(i3) = 1;
                end
            end
        end
       
        % We define the couples that are formed 
        sample = randperm(Ntot);
        partner1 = sample(1:20);
        partner2 = sample(21:40);

        for i3 = 1:20 % We check if one student of the couple is sick and in this case transmit the disease at 0.5 rate
            if (sickness(partner1(i3)==1 || sickness(partner2(i3)) == 1) && (sickness(partner1(i3))==0 || sickness(partner2(i3))==0))
                test = rand()>=0.5;
                if test ==1 && immuned(partner1(i3))==0 && immuned(partner2(i3))==0
                    sickness(partner1(i3))=1;
                    sickness(partner2(i3))=1;
                end
            end
        end 
       
       % We store in our matrix the number of sick students 
        mononucleosed(i,i2) = sum(sickness);
        if sum(sickness) == 0
            tf(i2)= i; % We store tf which is the time at which there is no more sick students
        end
        i = i+1;
    end
end

means = mean(mononucleosed'); % We compute the mean number of mononucleosed students at each time

subplot(3,1,1);
plot(0:(length(means)-1), means); % We plot the mean number of sick students at each time
errorbar(0:(length(means)-1), means, std(mononucleosed'));

subplot(3,1,2);
hist(mononucleosed(6,:)); % We plot the distribution of sick students at t=6 weeks

subplot(3,1,3)
hist(tf); % We plot the distribution of the time at which there is no sick students left

pause;
