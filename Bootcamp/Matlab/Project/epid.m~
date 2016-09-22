clear all;

Ntot = 50;

mononucleosed = zeros(1000,1)';
mononucleosed(1)=1;
for i2= 1:5000
    sickness = zeros(Ntot,1)';
    sickness(1) = 1;

    immuned = zeros(Ntot,1)';
    

    for i = 1:15

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



    end
    
    mononucleosed(i2) = sum(sickness);

end

hist(mononucleosed);
