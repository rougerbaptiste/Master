m=importdata('growthcurve.csv',';')
load growthcurve.mat

time = [0 12 24 36 48 72]

plot(time,m_Neg,"-;Negative control;",time , m_um10, "-;10µM;",time ,m_um100,"-;100µM;");
title("Fluorescence to time");
xlabel("Fluorescence")
ylabel("Time (h)")
legend("Fluorescence to time")
print -djpg image.jpg;

%% subplot(row,column) to put more plots on the same window

plot(time,m_Neg,"b-;Negative control;",time , m_um10, "r-;10µM;",time ,m_um100,"g-;100µM;");
% hold on;
% errorbar(time, m_Neg, std_Neg)
% errorbar(time, m_um10, std_um10)
% errorbar(time , m_um100,std_um100);
title("Fluorescence to time");
xlabel("Fluorescence")
ylabel("Time (h)")
legend("Fluorescence to time")
print -djpg image2.jpg;
