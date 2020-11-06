clear all
close all
%
SNR_sim = -10:5:20; % dB
SNR_ana = -10:20; % dB
%
OP_N_non_sim = [0.948889000000000,0.608603000000000,0.257116000000000,0.0892310000000000,0.0293270000000000,0.00936600000000000,0.00294700000000000];
OP_F_non_sim = [0.999999000000000,0.988611000000000,0.756075000000000,0.359567000000000,0.131241000000000,0.0441220000000000,0.0139100000000000];
% 
OP_N_sim = [0.999996000000000,0.979980000000000,0.710789000000000,0.323854000000000,0.116931000000000,0.0387400000000000,0.0123200000000000];
OP_N_exact = [0.999994000000000,0.999945000000000,0.999574000000000,0.998013000000000,0.992593000000000,0.980049000000000,0.955510000000000,0.915279000000000,0.859832000000000,0.789361000000000,0.710102000000000,0.626202000000000,0.542073000000000,0.462583000000000,0.388850000000000,0.324128000000000,0.267303000000000,0.219551000000000,0.178520000000000,0.144825000000000,0.116840000000000,0.0938800000000000,0.0756540000000000,0.0600510000000000,0.0474750000000000,0.0384590000000000,0.0305480000000000,0.0242150000000000,0.0194430000000000,0.0154940000000000,0.0122390000000000];
%
OP_F_sim = [0.923557000000000,0.631861000000000,0.334646000000000,0.137776000000000,0.0391680000000000,0.00957100000000000,0.00246600000000000];
OP_F_exact = [0.923253000000000,0.879414000000000,0.826174000000000,0.764953000000000,0.698610000000000,0.632326000000000,0.566669000000000,0.502080000000000,0.442905000000000,0.386293000000000,0.335790000000000,0.287819000000000,0.244991000000000,0.206456000000000,0.169133000000000,0.137655000000000,0.110215000000000,0.0863190000000000,0.0675970000000000,0.0515320000000000,0.0389430000000000,0.0295450000000000,0.0223240000000000,0.0168730000000000,0.0125060000000000,0.00957900000000000,0.00732100000000000,0.00550400000000000,0.00430300000000000,0.00319700000000000,0.00248600000000000];
OP_F_approx = [0.938193268916511,0.900092971080644,0.852005892356055,0.795635313128533,0.733349797800931,0.667728275099004,0.601205742635733,0.535852196527494,0.473258848457399,0.414473366528117,0.359961324559504,0.309675975807572,0.263319949605781,0.220693558522768,0.181894510703123,0.147257044596004,0.117130541933317,0.0916726802078665,0.0707595338906273,0.0540125538530775,0.0408892412968263,0.0307836069833152,0.0231050092052513,0.0173261305856954,0.0130039215557652,0.00978196215243132,0.00738240863735434,0.00559353449521528,0.00425656525462538,0.00325371937241593,0.00249820845700157];
%
semilogy(SNR_sim,OP_N_non_sim,'bs--',SNR_sim,OP_F_non_sim,'ro--')
hold on
semilogy(SNR_sim,OP_N_sim,'bs');
hold on 
%
semilogy(SNR_sim,OP_F_sim,'ro');
hold on 
semilogy(SNR_ana,OP_F_approx,'r:')
hold on
semilogy(SNR_ana,OP_N_exact,'b-')
hold on
semilogy(SNR_ana,OP_F_exact,'r-')
%
legend('User N, non-coop (sim.)', 'User F, non-coop (sim.)', ...
    'User N, SWIPT NOMA (sim.)','User F, SWIPT NOMA (sim.)', ...
    'User F, SWIPT NOMA (approx.)', 'SWIPT NOMA (exact)', ...
    'location','southwest')
xlabel('P_S (dB)')
ylabel('Outage Probability (OP)')
axis([0 20 1e-3 1])
xticks([0 5 10 15 20])