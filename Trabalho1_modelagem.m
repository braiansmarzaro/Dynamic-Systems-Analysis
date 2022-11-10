clear all
clc      
close all

s = tf('s');
N = 2;

G = (2*N*(s+3)) / (s*(s+(6/N))*(s+N-2))

K = 1;
%rltool(G)

FTMF = feedback(K*G,1)

%Criticamente estável
step(FTMF)


xlim([0 5])

% Para mp <5%, ici = .7

% >>> mp = lambda x: math.exp(-math.pi*x/(1-x**2)**.5)
% >>> mp(.6)
% 0.094780224842154856
% >>> mp(.4)
% 0.25382672198010869
% >>> mp(.1)
% 0.72924761428767093
% >>> mp(.9)
% 0.0015237558205194097
% >>> mp(.8)
% 0.015164619864546564
% >>> mp(.7)
% 0.045987910260267752
% >>> mp(.75)
% 0.028375441745705068
% >>> mp(.65)
% 0.068076645101877914
% >>> mp(.7)
% 0.045987910260267752


num = [4 12];
den = [1 3 4 12];

% polos
rltool(FTMF)

% Introduzir o sistema, mostrar a instabilidade, analisar a atuação dum Kp


