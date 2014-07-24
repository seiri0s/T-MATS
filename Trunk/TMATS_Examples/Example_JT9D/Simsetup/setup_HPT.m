function MWS = setup_HPT(MWS)
%		T-MATS -- setup_HPT.m
% *************************************************************************
% written by Jeffryes Chapman
% NASA Glenn Research Center, Cleveland, OH
% Dec 18th, 2012
%
% This function creates the properties of the HPT component for the JT9D.
% *************************************************************************
            
  
 MWS.HPT.NcVec = [ 60 70 80 90 100 110];

 MWS.HPT.PRVec = [  3.000    3.250    3.500    3.750    4.000    4.250    4.500...
                   4.750    5.000    5.250    5.500    5.750    6.000    6.250...
                   6.500    6.750    7.000    7.250    7.500    8.000];


%========== Wc = f(NcMap, PRMap) ==================
 MWS.HPT.WcArray = [...
                      30.446   30.533   30.568   30.572   30.572   30.572   30.572...
                      30.572   30.572   30.572   30.572   30.572   30.572   30.572...
                      30.572   30.572   30.572   30.572   30.572   30.572 ; 
                      30.299   30.413   30.480   30.516   30.529   30.530   30.530...
                      30.530   30.530   30.530   30.530   30.530   30.530   30.530...
                      30.530   30.530   30.530   30.530   30.530   30.530 ; 
                      30.120   30.239   30.317   30.368   30.398   30.415   30.421...
                      30.421   30.421   30.421   30.421   30.421   30.421   30.421...
                      30.421   30.421   30.421   30.421   30.421   30.421 ; 
                      30.014   30.124   30.201   30.253   30.288   30.311   30.325...
                      30.333   30.337   30.337   30.337   30.337   30.337   30.337...
                      30.337   30.337   30.337   30.337   30.337   30.337 ; 
                      29.856   29.948   30.013   30.059   30.091   30.113   30.128...
                      30.139   30.145   30.149   30.150   30.150   30.150   30.150...
                      30.150   30.150   30.150   30.150   30.150   30.150 ; 
                      29.799   29.870   29.920   29.955   29.979   29.997   30.009...
                      30.017   30.023   30.026   30.028   30.029   30.029   30.029...
                      30.029   30.029   30.029   30.029   30.029   30.029];
							  				      							       							      							       				   
%========== eff = f(NcMap, PRMap) ==================
 MWS.HPT.EffArray = [...
                        0.8460   0.8405   0.8349   0.8296   0.8249   0.8206   0.8165...
                        0.8127   0.8092   0.8060   0.8030   0.8002   0.7976   0.7953...
                        0.7931   0.7911   0.7892   0.7875   0.7858   0.7826 ; 
                        0.8879   0.8842   0.8804   0.8769   0.8735   0.8701   0.8670...
                        0.8640   0.8614   0.8590   0.8568   0.8548   0.8529   0.8511...
                        0.8495   0.8479   0.8460   0.8436   0.8414   0.8373 ; 
                        0.9125   0.9111   0.9096   0.9078   0.9055   0.9034   0.9014...
                        0.8995   0.8979   0.8964   0.8950   0.8936   0.8924   0.8903...
                        0.8877   0.8853   0.8830   0.8808   0.8787   0.8749 ; 
                        0.9228   0.9242   0.9250   0.9247   0.9240   0.9232   0.9224...
                        0.9217   0.9210   0.9203   0.9197   0.9188   0.9162   0.9137...
                        0.9113   0.9091   0.9070   0.9050   0.9031   0.8980 ; 
                        0.9215   0.9258   0.9289   0.9304   0.9313   0.9319   0.9323...
                        0.9326   0.9328   0.9329   0.9330   0.9311   0.9288   0.9266...
                        0.9245   0.9225   0.9206   0.9188   0.9161   0.9107 ; 
                        0.9106   0.9176   0.9232   0.9267   0.9292   0.9312   0.9327...
                        0.9340   0.9351   0.9361   0.9369   0.9349   0.9329   0.9311...
                        0.9293   0.9276   0.9259   0.9239   0.9212   0.9161];


%------ scalar for corrected flow -------------
% Determined by equation taken from NPSS data
% Perf_Wc/ WcMap 
% Note, NPSS s_Wc = 1.4085 and 
% TMATS s_Wc = 1.4085 *(sqrt(1/Tstd)/(1/Pstd))
MWS.HPT.s_Wc = 0.908789;

%--------- scalar for pressure ratio ----------
% MWS.HPT.s_PR = 2.362402; 
MWS.HPT.s_PR = 0.425;

%--------- scalar for efficiency ----------  
MWS.HPT.s_eff = 0.9803;

%--------- scalar for corrected HPT speed ----------
% Note: Determined by equation taken from NPSS data
% 1/(Perf_Nc * sqrt(518.67)/ NcMap) 
% MWS.HPT.s_Nc = 0.028678;
MWS.HPT.s_Nc = 34.87023;

%--------- Cooling flow position ----------
% 0 - inlet,  1 - exit
MWS.HPT.Cool = [0 1];
