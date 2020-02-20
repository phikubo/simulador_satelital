function vlr_c_no = c_no(potencia, ob ,eficiencia, diametro, perdidasT, GT_sat, bw, frec )
    %---------------------ESTÁ EN PROCESO.----------------------------
    long_onda = (3*10^8)/(frec*10^9);
    ganancia = eficiencia*(pi*diametro/long_onda)^2;
    Bwdb = 10*log10(bw*10^6); 
    
    pire = potencia+ob+ganancia;

end