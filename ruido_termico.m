

%function ruido_total = ruido_termico(valores_g, lista2)

    
    
%   ruido_total=0    
%end

%vector de valores_g de g o l, pero en g.
%en .super: organizar los valores g, si es l entonces valor[i]=1/l, sino valor[i]=g

to=290;
denominador=1;
ruido_total=0;
valores_g=[1.5 1.1 1.2];
tipo= ["g", "g", "g"];
temperatura=[700 300 450];

for (i=1:length(valores_g))
	if tipo(i)=="l"
		numerador=to*(valores_g(i)-1);
        disp('L')
	else
		numerador=temperatura(i);
        disp('G')
	end
    
    if i==1
        
    	denominador=1;
    else
    	denominador=valores_g(i-1)*denominador;	
    end
    %test=numerador/denominador
    numerador
    denominador
    ruido_total=ruido_total+(numerador/denominador)
end

%si hay 4 elementos como se muestra en la figura:
%to(l1-1)/1 + to(l2-1)/g1*1 + tamp3/g2*g1*1+ tamp4/g3*g2*g1*1