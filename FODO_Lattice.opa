{..d\4t curso física 2025-26\fisica de aceleradores\opa\fodo_lattice.opa}


energy = 2.500000;
rotinv = 0;
    betax   = 7.2004960; alphax  = -1.3985345;
    etax    = 1.3126074; etaxp   = 0.2324702;
    betay   = 6.5433256; alphay  = 1.2975297;
    etay    = 0.0000000; etayp   = 0.0000000;

{----- variables ---------------------------------------------------}


{----- table of elements ---------------------------------------------}

d1   : drift, l = 1.20000000, ax = 50.00, ay = 50.00;

qf   : quadrupole, l = 0.25000000, k = 1.200000, ax = 50.00, ay = 50.00;
qd   : quadrupole, l = 0.25000000, k = -1.200000, ax = 50.00, ay = 50.00;

bend : bending, l = 1.20000000, t = 10.0000000000, k = 0.000000,
       t1 = 5.00000000, t2 = 5.00000000, ax = 50.00, ay = 50.00;


{----- table of segments ---------------------------------------------}

fodo : d1, qf, d1, bend, d1, qd, d1, nper=36;
ring : 36*fodo;

{..d\4t curso física 2025-26\fisica de aceleradores\opa\fodo_lattice.opa}
