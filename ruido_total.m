

function [ruido_up ruido_down] = ruido_total(ruido_antena, ruido_recepcion,  temperatura_brillo)

        %el calculo es para up

        ruido_up =temperatura_brillo+ruido_recepcion;

        %el calculo es para downlink
        ruido_down=ruido_antena+ruido_recepcion;
    
        disp('---------------------------------')

 

end

