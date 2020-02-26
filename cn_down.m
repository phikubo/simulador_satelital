function CNoDsc = portadora_ruido_dsc(PIREd,Lbfd,GT,Bw)
K = 1.3806 * (10^-23);

CNoDsc = PIREd + OB - Lbfd - Ld + GT - 10*log10(K);

end