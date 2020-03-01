function vlrGan = ganancia_antena(f,n,diam)
    longOn = 0.3/f;
    vlrGan = n*((pi*diam/longOn)^2);
    vlrGan = 10*log10(vlrGan);
    
end