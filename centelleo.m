function vlrcent = centelleo(f,elevacion,latitud)
    if (f >= 10)
            if  elevacion < 10 && elevacion > 5
                vlrcent = 0.3;
            elseif elevacion <= 5                    
                vlrcent = 15;
            elseif elevacion >= 10
                vlrcent = 0;
            end
    elseif f >= 1 && f <=6
            if latitud < 10 && latitud > -10
                vlrcent = 10;
            end
            
    else
            vlrcent = 0;
            
    end            
        
    
end