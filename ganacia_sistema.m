

function ganancia = ganacia_sistema(valores_g, tipo)
    ganancia = 1;    
    for (i=1:length(tipo))
        if string(tipo(i))=="l"
            ganancia = (1/valores_g(i)) * ganacia;            
            disp('L')
            
        else
            ganancia = valores_g(i) * ganacia;            
            disp('G')
        end

            
        
    end

end
