clc
clear

X = load ('RandomNumbersLarge_1.txt');

figure(1)

% GapArray(3000) = 0;
% GapVar = 56;
% Gap = 1 ;
% for n=1:1:length(X)
%     
%     if(GapVar ~= X(n))
%         Gap = Gap +1;
%     else
%         GapArray(Gap + 1) = GapArray(Gap + 1)+1;
%         Gap = 1;
%     end
% end
% 
% n=1:1:3000;
% plot(n, GapArray(n),'-r');

GapArray(3000) = 0;
GapVar = 11;
Gap = 1;
for n=1:1:length(X)
    
    if(GapVar ~= X(n))
        Gap = Gap + 1;
    else
        GapArray(Gap + 1) = GapArray(Gap + 1) + 1;
        Gap = 1;
    end
end

n=1:1:3000;
plot(n,GapArray(n),'-g');
