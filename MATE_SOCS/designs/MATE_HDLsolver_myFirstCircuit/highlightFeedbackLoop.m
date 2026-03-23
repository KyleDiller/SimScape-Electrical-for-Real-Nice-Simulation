open_system('MATE_HDLsolver_myFirstCircuit');
open_system('gm_MATE_HDLsolver_myFirstCircuit');
cs.HiliteType = 'user3';
cs.ForegroundColor = 'black';
cs.BackgroundColor = 'yellow';
set_param(0, 'HiliteAncestorsData', cs);
hilite_system('gm_MATE_HDLsolver_myFirstCircuit/ForFPGA/LC vectorized', 'user3');
hilite_system('MATE_HDLsolver_myFirstCircuit/ForFPGA/LC vectorized', 'user3');
