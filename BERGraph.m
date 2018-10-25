% Script for computing the BER for digital modulation schemes in a
% AWGN channel and plotting the graph between BER and SNR

clc; 
close all;
EbN0dB=-4:1:24;
EbN0lin=10.^(EbN0dB/10);
colors={'k-*','g-o','k-p','b:s'};
index=1;
 
%BPSK
 
BPSK = 0.5*erfc(sqrt(EbN0lin));  % theoretical ber for bpsk
plotHandle=plot(EbN0dB,log10(BPSK),char(colors(index)));
set(plotHandle,'LineWidth',4);
hold on;
 
index=index+1;
 
%QPSK

berErr = 0.5*erfc(sqrt(EbN0lin));  % theoretical ber for qpsk
plotHandle=plot(EbN0dB,log10(berErr),char(colors(index)));
set(plotHandle,'LineWidth',1.5);
index=index+1;

%Binary DPSK
 
Pb = 0.5*exp(-EbN0lin);  % theoretical ber for B-dpsk
plotHandle = plot(EbN0dB,log10(Pb),char(colors(index)));
set(plotHandle,'LineWidth',1.5);
index=index+1;
 
% 16 QAM
M=16;
 
i=M,
k=log2(i);
QAM = 2/k*(1-1/sqrt(i))*erfc(sqrt(3*EbN0lin*k/(2*(i-1))));
plotHandle=plot(EbN0dB,log10(QAM),char(colors(index)));
set(plotHandle,'LineWidth',1.5);
index=index+1;

 
legend('BPSK','QPSK','D-BPSK','16-QAM');
axis([-4 18 -8 0]);
set(gca,'XTick',-4:1:24);
ylabel('Probability of BER Error in log10(Pb)');
xlabel('Eb/N0 (dB)');
title('Probability of BER Error log10(Pb) Vs Eb/N0');
grid on;
