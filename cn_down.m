function CNoDsc = portadora_ruido_dsc(PIREd, OB,Lbfd,Ld,GT)
K = 1.3806 * (10^-23);

CNoDsc = PIREd + OB - Lbfd - Ld + GT - 10*log10(K);

end