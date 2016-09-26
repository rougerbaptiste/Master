% % dx = x with x0 = 1
%
% dx = 1;
%
% delta = 0.01;
%
% tMax = 10;
%
% xs = zeros(length(0:delta:tMax),1);
% xs(1) = dx;
% ex = zeros(length(0:delta:tMax),1);
% ex(1) = 1;
%
% i2 = 0;
% for i = 0:delta:tMax
% 	i2 = i2+1;
% 	dx = dx + delta * dx;
% 	xs(i2) = dx;
%  	ex(i2) = exp(i);
% end
%
% subplot(1,2,1);
% plot(0:delta:tMax, xs);
% hold on;
% plot(0:delta:tMax, ex);
%
% subplot(1,2,2);
% plot(0:delta:tMax,ex-xs);
% xlabel('t');
% ylabel('Difference between analytical and Euler methods');


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

repNumber = 100;
divNumber = 20;
mutRate = 0.1;



vars = zeros(repNumber,1);
numbers = zeros(repNumber,1);

for rep = 1:repNumber
    bact = [0];

    disp(rep);

	for i = 1:divNumber
        disp(i);
		newbact = zeros(length(bact)*2,1);
		id = 1;
		for ind = 1:length(bact)

			if bact(ind)==1
				newbact(id) = 1;
				id = id +1;

				newbact(id) = 1;
				id = id +1;
			else
				rand1 = rand()<mutRate;
				newbact(id) = rand1;

				id = id +1;

				rand2 = rand()<mutRate;
				newbact(id) = rand2;
				id = id +1;
			end
		end

		bact = newbact;

	end
	vars(rep)=var(bact);
	numbers(rep)=sum(bact);

end

varsy = zeros(repNumber,1);
numbersy = zeros(repNumber,1);
bacties = zeros(repNumber,1);
for rep = 1:repNumber
	bacty = zeros(length(bact),1);
	for i = 1:length(bact)
		bacty(i) = rand()<mutRate;
	end
	varsy(rep)=var(bacty);
	numbersy(rep)=sum(bacty);
end

subplot(1,2,1);
plot(numbers, vars, 'o');
subplot(1,2,2);
plot(numbersy, varsy, 'o');

