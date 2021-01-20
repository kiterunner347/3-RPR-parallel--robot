% Adams / MATLAB Interface - Release 2020.1.0
global ADAMS_sysdir; % used by setup_rtw_for_adams.m
global ADAMS_host; % used by start_adams_daemon.m
machine=computer;
datestr(now)
if strcmp(machine, 'GLNXA64')
   arch = 'linux64';
elseif strcmp(machine, 'PCWIN64')
   arch = 'win64';
else
   disp( '%%% Error : Platform unknown or unsupported by Adams Controls.' ) ;
   arch = 'unknown_or_unsupported';
   return
end
   [flag, topdir]=system('adams2020_1_SE -top');
if flag == 0
  temp_str=strcat(topdir, '/controls/', arch);
  addpath(temp_str)
  temp_str=strcat(topdir, '/controls/', 'matlab');
  addpath(temp_str)
  temp_str=strcat(topdir, '/controls/', 'utils');
  addpath(temp_str)
  ADAMS_sysdir = strcat(topdir, '');
else
  addpath( 'D:\Software\Adams\controls/win64' ) ;
  addpath( 'D:\Software\Adams\controls/matlab' ) ;
  addpath( 'D:\Software\Adams\controls/utils' ) ;
  ADAMS_sysdir = 'D:\Software\Adams\' ;
end
ADAMS_exec = '' ;
ADAMS_host = 'DESKTOP-O1FIFKV' ;
ADAMS_cwd ='C:\Users\93548\Desktop\RPRAdams\fitestv1' ;
ADAMS_prefix = 'Fkinev1' ;
ADAMS_static = 'no' ;
ADAMS_solver_type = 'C++' ;
ADAMS_version = '2020_1_SE' ;
ADAMS_communication_interval = 0.005 ;
ADAMS_communications_per_output_step = 1 ;
ADAMS_time_offset = 0.0;
if exist([ADAMS_prefix,'.adm']) == 0
   disp( ' ' ) ;
   disp( '%%% Warning : missing Adams plant model file(.adm) for Co-simulation or Function Evaluation.' ) ;
   disp( '%%% If necessary, please re-export model files or copy the exported plant model files into the' ) ;
   disp( '%%% working directory.  You may disregard this warning if the Co-simulation/Function Evaluation' ) ;
   disp( '%%% is TCP/IP-based (running Adams on another machine), or if setting up MATLAB/Real-Time Workshop' ) ;
   disp( '%%% for generation of an External System Library.' ) ;
   disp( ' ' ) ;
end
ADAMS_init = '' ;
ADAMS_inputs  = 'Force3' ;
ADAMS_outputs = 'dq1!dq2!dq3!q1out!q2out!q3out' ;
ADAMS_pinput = 'Controls_Plant_2.ctrl_pinput' ;
ADAMS_poutput = 'Controls_Plant_2.ctrl_poutput' ;
ADAMS_uy_ids  = [
                   34
                   18
                   19
                   20
                   2
                   5
                   7
                ] ;
ADAMS_mode   = 'non-linear' ;
tmp_in  = decode( ADAMS_inputs  ) ;
tmp_out = decode( ADAMS_outputs ) ;
disp( ' ' ) ;
disp( '%%% INFO : ADAMS plant actuators names :' ) ;
disp( [int2str([1:size(tmp_in,1)]'),blanks(size(tmp_in,1))',tmp_in] ) ;
disp( '%%% INFO : ADAMS plant sensors   names :' ) ;
disp( [int2str([1:size(tmp_out,1)]'),blanks(size(tmp_out,1))',tmp_out] ) ;
disp( ' ' ) ;
clear tmp_in tmp_out ;
% Adams / MATLAB Interface - Release 2020.1.0
