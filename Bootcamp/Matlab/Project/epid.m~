clear all;

Ntot = 50;

mononucleosed = zeros(1000,6)';
mononucleosed(:,1)=1;
for i2= 1:1000
    sickness = zeros(Ntot,1)';
    sickness(1) = 1;

    immuned = zeros(Ntot,1)';
    
    i=2;
    while(sum(sickness ~= 0))

        %disp(sickness);

        for i3 = 1:Ntot
             if sickness(i3)==1
                test = rand()<0.1;
                
                if test ==1
                    %disp('Healed');
                    sickness(i3) = 0;
                    immuned(i3) = 1;
                end
            end
        end
        
        sample = randperm(Ntot);
        partner1 = sample(1:20);
        partner2 = sample(21:40);

        for i3 = 1:20
            if (sickness(partner1(i3)==1 || sickness(partner2(i3)) == 1) && (sickness(partner1(i3))==0 || sickness(partner2(i3))==0))
                test = rand()>=0.5;
                if test ==1 && immuned(partner1(i3))==0 && immuned(partner2(i3))==0
                    %disp(sum(sickness));
                    sickness(partner1(i3))=1;
                    sickness(partner2(i3))=1;
                    %disp('Biiim');
                end
            end
        end 
        
        mononucleosed(i,i2) = sum(sickness);
        if sum(sickness) == 0
            tf(i2)= i;
        end
        i = i+1;
    end


end

means = mean(mononucleosed');

subplot(1,3,1);
plot(0:(length(means)-1), means);
errorbar(0:(length(means)-1), means, std(mononucleosed'));
%axis([0 length(means) 0 max(means)]);

subplot(1,3,2);
hist(mononucleosed(6,:));

subplot(1,3,3)
hist(tf);

pause;
