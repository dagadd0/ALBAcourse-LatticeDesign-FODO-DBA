{..a 2025-26\fisica de aceleradores\practica-opa-dba\dba_2026_v1clase.opa}


energy = 2.500000;
rotinv = 0;
    betax   = 23.7181926; alphax  = 0.0000000;
    etax    = 0.0000074; etaxp   = 0.0000000;
    betay   = 3.4105566; alphay  = 0.0000000;
    etay    = 0.0000000; etayp   = 0.0000000;

{----- variables ---------------------------------------------------}


{----- table of elements ---------------------------------------------}

d1   : drift, l = 3.00000000, ax = 15.00, ay = 15.00;
d2   : drift, l = 0.25000000, ax = 15.00, ay = 15.00;
d3   : drift, l = 1.25000000, ax = 15.00, ay = 15.00;

qf1  : quadrupole, l = 0.25000000, k = 4.305000, ax = 15.00, ay = 15.00;
qf2  : quadrupole, l = 0.25000000, k = 4.235470, ax = 15.00, ay = 15.00;
qd1  : quadrupole, l = 0.25000000, k = -4.225000, ax = 15.00, ay = 15.00;

bend : bending, l = 1.20000000, t = 360/36, k = 0.000000, t1 = 0.5*360/36,
       t2 = 0.5*360/36, ax = 15.00, ay = 15.00;

sh   : sextupole, l = 0.00000000, k = 4.983248, n = 1, ax = 15.00,
       ay = 15.00;
sv   : sextupole, l = 0.00000000, k = -16.384854, n = 1, ax = 15.00,
       ay = 15.00;


{----- table of segments ---------------------------------------------}

dba  : d1, qf1, d2, qd1, d2, bend, sv, d3, sh, qf2, d3, bend, d2, qd1, d2, qf1,
       d1, nper=18;
ring : 18*dba;

{..a 2025-26\fisica de aceleradores\practica-opa-dba\dba_2026_v1clase.opa}
