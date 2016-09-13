load somestats.mat;

mean_men=mean(men,2);
std_men = std(men,0,2);
mean_women = mean(women,2);
std_women = std(women,0,2);

absc = 1961:5:2016;
absc = absc(1:11);
% axis(1961,absc(end),0,7)
subplot(2,2,1)
plot(absc, mean_men )
hold on;
errorbar(absc, mean_men, std_men, 'r',
    absc, mean_women, std_women, 'g'
    )
xlabel("Years");
ylabel("Heigh in feet")
% pause;
hold off;

mean = mean_men;
mean(:,2) = mean_women;
subplot(2,2,2)
bar(absc, mean)
% pause;
hold off;

subplot(2,2,3)
hist(men(end,:))
xlim([0,12])
title("Men")
subplot(2,2,4)
hist(women(end,:))
xlim([0,12])
title("Women")
pause;

disp(tri(1,3));
