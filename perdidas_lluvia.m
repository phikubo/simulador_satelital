

function a_lluvia = perdidas_lluvia(freq, latitud, longitud, inclinacion,intensidad_lluvia, factor_k, factor_a, hs, ho , indisponibilidad)

    longO = (0.3)/ freq; %longitud de onda 
     %----------------------------------------
    %paso 1: determinar hr (recomendacion p.839)
    hr = ho+0.36;
    %paso 2: longitud del trayecto oblicuo
    if inclinacion >= 5 && inclinacion >0
        ls= (hr-hs)/sind(inclinacion); %[km]
    else
        ls= 2*(hr-hs)/((((sind(inclinacion))^2+ 2*(hr-hs)/8500))^(1/2)+ sind(inclinacion)); %[km]   
    end 
    %paso 3:  determinar proyecccion horizontal
    lg=ls*cosd(inclinacion);
    %paso 4:  obtener roo1 (p.387) %por defecto, pero se puede calcular

    %paso 5: atenuacion especifica
    atenuacionEsp= factor_k*(intensidad_lluvia)^factor_a;
    %paso 6: factor de reduccion horizontal 
    r=1/(1+ (0.78*(lg*atenuacionEsp/freq)^(1/2))-(0.38*(1-exp(-2*lg))));
    %paso 7: factor de ajuste vertical
    pita = atand((hr-hs)/(lg*r));
    as = (hr-hs)/(lg*r);
    %VALIDACION
    if pita > 0
        lr = (lg*r)/cosd(inclinacion); %[km] %coeficiente LR, necesario para factor de ajuste vertical
    else
        lr = (hr-hs)/sind(inclinacion); %[km]%coeficiente LR, necesario para factor de ajuste vertical
    end
    if abs(latitud) < 36
        x=36-abs(latitud);
    else
        x=0;
    end
    %-----------
    voo1 = 1/(1+((sind(inclinacion)^(1/2))*((31*(1-exp(-inclinacion/(1+x)))*(sqrt(lr*atenuacionEsp)/freq^2))- 0.45))); %factor ajuste vertical para 0,01% del tiempo [grados]
    
    le= lr*voo1; %Longitud efectiva del trayecto [km]

    if (hr-hs) <= 0
        atenuacionRebasamiento001 = 0; %En este caso, la 
    else
        atenuacionRebasamiento001 = atenuacionEsp*le; %atenuacion de rebasamiento para el 0,01% de un aoo medio [dB]
    end
 
    %si p: betta
    if indisponibilidad >= 1 | abs(latitud)>=36
        betta=0;
        
    elseif (indisponibilidad<1 && abs(latitud) <36) && (inclinacion>=25)
        betta=-0.005*(abs(latitud)-36);
        
    else
        betta = -(0.005*(abs(latitud)-36)) + 1.8 - (4.25*sind(inclinacion));
        
    end
    
    
    a_lluvia = atenuacionRebasamiento001*((indisponibilidad/0.01))^(-(0.655+(0.033*log(indisponibilidad))-(0.045*log(atenuacionRebasamiento001))-(betta*(1-indisponibilidad)*(sind(inclinacion))))); %atenuacion rebasamiento de una disponibilidad para el p% de un ano medio [dB]
    
end