function vlrGan = ganancia_antena(f,n,diam)
    longOn = 0.3/f;
    vlrGan = n*((pi*diam/longOn)^2);
    
end