

function Ta = ruido_antena(tipo, Tg,gls,Ts,Tat,ag,al,Tw,w)
    if tipo=="Con Lluvia"
    Ta = ((Tg*gls))/w + (Ts + Tat*(ag*al-1))*((1-gls)/(ag*al*w)) + (Tw*(w-1))/w;
    elseif tipo=="Cielo Despejado"
    Ta = ((Tg*gls))/w + (Ts + Tat*(ag-1))*((1-gls)/(ag*w)) + (Tw*(w-1))/w;
    else
        continue
    end
    
    
   Ta=0    
end
