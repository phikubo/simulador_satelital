function CNoAsc = portadora_ruido_asc(PIREa,Lbfa,GTs,Bw)
K = 1.3806 * (10^-23);

CNoAsc = PIREa - Lbfa  + GTs - 10*log10(K) - 10*log10(Bw);

end