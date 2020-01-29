

function ruido_total = ruido_recepcion(valores_g, tipo, temperatura)
    to=290;
    denominador=1;
    ruido_total=0;
    %valores_g=[1.5 1.1 1.2];
    %tipo= ["g", "g", "g"];
    %temperatura=[700 300 450];
    length(valores_g)
    valores_g
    tipo
    length(tipo)
    for (i=1:length(tipo))
        if string(tipo(i))=="l"
            %test=(valores_g(i))
        	%test2=1/valores_g(i)
            %no existe i-1
            numerador=to*(valores_g(i)-1);
            if i==1
                denominador=1;
            else
                if string(tipo(i-1))=="l"
                denominador=(1/valores_g(i-1))*denominador;
                else
                denominador=(valores_g(i-1))*denominador;
                end
            end
            disp('L')
            
        else
            numerador=temperatura(i);
            if i==1
                denominador=1;
            else
                if string(tipo(i-1))=="l"
                denominador=(1/valores_g(i-1))*denominador;
                else
                denominador=(valores_g(i-1))*denominador;
                end
                %denominador=valores_g(i-1)*denominador;
            end
            disp('G')
        end

            
        numerador
        denominador
        disp('---------------------------------')
        ruido_total=ruido_total+(numerador/denominador)
    end

end

%vector de valores_g de g o l, pero en g.
%en .super: organizar los valores g, si es l entonces valor[i]=1/l, sino valor[i]=g



%si hay 4 elementos como se muestra en la figura:
%to(l1-1)/1 + to(l2-1)/g1*1 + tamp3/g2*g1*1+ tamp4/g3*g2*g1*1