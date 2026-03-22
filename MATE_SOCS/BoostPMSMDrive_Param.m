% Boost parameter
nb_sw=2; nb_lc=2;nb_r=1;nb_src=2; nb_out=3; rL=1.2e-3;rC=10000;L=10e-3; C=10e-3; LpejoSw=1e-6;
h=Ts;Ts_sim=Ts;T_deadtime=5e-6; 

%HDL FPGA matrix sizes
MAX_INPUTS=16;
MAX_OUTPUTS=16;
MAX_SWITCHES=8;
MAX_INPUTS=16;

%% Switching function inverter parameter
Gpp=5000;Gip=0.1e6; % snubber
min_charge=0.1;
Lsw=0.1e-6; % not used, was Pejovic L value for PIR bypass.

% Control Parameters


Tsc           =50e-6;                % sample and hold time for PMSM control


% 
% 
% % Motor Parameters
% 
% Power       = 8000                      ; % Rated Power [W]

 PairOfPoles = 3;
 Pm = PairOfPoles;
 Inertia_rate =  0.157               ; % Inertia rate [times]

 Jf          = 124.1060+20.5             ; % Inertia [10-4*kgm2]
 Rs          = 0.120                     ; % Resistance (Phase) [ohm]

 Irms        = 26.00                     ; % Rated Current [Arms]

 Ld          = 2.984                      ; % d-Inductance (Phase) [mH]
 Lq          = 4.576                      ; % q-Inductance (Phase) [mH]
 KE          = 97.5988        ; % Inducted Voltage constant [mV(rms)/rpm]
 Mf=0.25366; % magnet flux in Wb
 Salient_Fcut= 1/(5e-4);  % filter frequency for derivative of backemf
% 
% 
% % Vector Control
% 
 Torque_Lim  = 50           ; % Rate of the Torque Current Limit [%]

 wsc         =  200          ; % Frequency Response of the Speed Controller
 wcc         = 2000          ; % Response Frequency of the Current Controller

 wspi        = wsc / 10      ; % Break Frequency of the Speed Controller
 wcpi        = wcc / 10      ; % Break Frequency of the Current Controller
% 
% 
% % Fundamenal Parameters of the Circuit           

 VDC         = 200 * sqrt(2)     ;
 V_upper     = 400               ;

 sqrt2       = sqrt( 2 ) ;
 sqrt3       = sqrt( 3 ) ;
 sqrt23      = sqrt( 2 / 3 ) ;
 tr32        = sqrt23 * [ 1 -1/2 -1/2 ; 0 sqrt(3)/2 -sqrt(3)/2 ];
 tr23        = sqrt23 * [ 1 0 ; -1/2 sqrt(3)/2 ; -1/2 -sqrt(3)/2 ];
 rad_to_rpm  = 60 / 2 / pi ;
 rpm_to_rad  = 1 / 60 * 2 * pi ;

 Ld_100      = Ld / 1000 ;

 Lq_100      = Lq / 1000 ;

 Ke          = KE / 1000 * 60 / 2 / pi ; 

 iq_100      = Irms * sqrt3 ;
 inv_iq_100  = 1 / iq_100 ;
 iq_max      = iq_100 * Torque_Lim / 100 ;
 id_100      = iq_100 ;
 inv_id_100  = 1 / id_100 ;

 Kt          = Ke ;
 inv_Kt      = 1 / Kt ;
 J1          = Jf / 10000 ;
 J2          = J1 * Inertia_rate ;
 Jall        = J1 + J2 ;


