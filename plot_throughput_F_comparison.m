close all
clear all
%
PS_dB   = -10:5:20;
%
F_oma = [0,2.99999999999745e-05,0.0366960000000000,0.352356000000000,0.718884000000000,0.901320000000000,0.967497000000000];
F_non = [0,0.0116000000000001,0.243826000000000,0.640212000000000,0.867942000000000,0.956634000000000,0.986042000000000];
F_proposed = [0.0639512341189301,0.353267595594226,0.644897901043425,0.844202593331241,0.952778966124661,0.988128619261205,0.997111152882469];
%
plot(PS_dB,F_oma,'o-',PS_dB,F_non,'*-',PS_dB,F_proposed,'s-')
%
legend('OMA','Non-coop','Proposed system','location','southeast')
xlabel('P_S (dB)')
ylabel('Sum-throughput (bits/s/Hz)')
axis([0 20 0 2])