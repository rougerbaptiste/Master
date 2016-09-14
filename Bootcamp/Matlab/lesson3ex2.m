%%% solutions to exercise 2, lesson 3 (somestats)
%load the workspace
load('somestats.mat')

% calculate the mean and standard deviation for each year
menmean=mean(men,2);
menstd=std(men,0,2);
womenmean=mean(women,2);
womenstd=std(women,0,2);

% I define the time axis
time=[1961:5:2011];


% I plot and save a first figure, with the mean and std for men and women
% over each year
figure,
errorbar(time,womenmean,womenstd,'g--*','LineWidth',2)
hold on
errorbar(time,menmean,menstd,'c-o','LineWidth',2)
ylim([3 8])
ylabel('height [ft]')
xlabel('year')
legend('mean women height','mean men heigth')
title('Height of women and men in France from 1961 to 2011')

pause(2)
savefig('trends.fig')

close all


% I do the same but with a bar graph. documentation: bar
combinedmeans=[womenmean,menmean]

figure,
bar(time,combinedmeans,'LineWidth',1.5)
ylim([3 8])
ylabel('height [ft]')
xlabel('year')
legend('mean women height','mean men heigth')
title('Height of women and men in France from 1961 to 2011')

pause(2)
savefig('trends_bar.fig')

close all


% I plot the distribution of the measurements of the last year (row 11 for
% each matrix) (documentation: hist)
figure,

subplot(2,1,1)
hist(women(11,:),50)
xlim([0 11])
ylim([0 5000])
xlabel('height [ft]'), ylabel('counts')
legend('women distribution')

subplot(2,1,2)
hist(men(11,:),50)
xlim([0 11])
ylim([0 5000])
xlabel('height [ft]'), ylabel('counts')
legend('men distribution')


pause(2)
savefig('distrib2011')

close all

% I put the previous figures all together in a nice-looking panel. Note:
% when the figure opens, you can drag it to make it bigger, so that all
% plots show correctly

figure,

subplot(3,1,1)
errorbar(time,womenmean,womenstd,'g--*','LineWidth',2)
hold on
errorbar(time,menmean,menstd,'c-o','LineWidth',2)
ylim([3 8])
ylabel('height [ft]')
xlabel('year')
legend('mean women height','mean men heigth')
title('Height of women and men in France from 1961 to 2011')


subplot(3,1,2)
bar(time,combinedmeans,'LineWidth',1.5)
ylim([3 8])
ylabel('height [ft]')
xlabel('year')
legend('mean women height','mean men heigth')
title('Height of women and men in France from 1961 to 2011')


subplot(3,2,5)
hist(women(11,:),50)
xlim([0 11])
ylim([0 5000])
xlabel('height [ft]'), ylabel('counts')
legend('women distribution')


subplot(3,2,6)
hist(men(11,:),50)
xlim([0 11])
ylim([0 5000])
xlabel('height [ft]'), ylabel('counts')
legend('men distribution')

savefig('recap.fig')