

function ruido = ruido_total(ruido_antena, ruido_recepcion,  tb)
    to=290;
    tb
    if ruido_antena==0
        %el calculo es para up

        %t=tb+t_recepcion
    else
        %el calculo es para downlink
    %t=t_antena+t_recepcion
    end
        disp('---------------------------------')
        ruido=0
    end

end

%vector de valores_g de g o l, pero en g.
%en .super: organizar los valores g, si es l entonces valor[i]=1/l, sino valor[i]=g



%si hay 4 elementos como se muestra en la figura:
%to(l1-1)/1 + to(l2-1)/g1*1 + tamp3/g2*g1*1+ tamp4/g3*g2*g1*1