function CNoAsc = portadora_ruido_asc(PIREa,IB,Lbfa,La,GrTe)
K = 1.3806 * (10^-23);

CNoAsc = PIREa + IB - Lbfa - La + GrTe - 10*log10(K);

end