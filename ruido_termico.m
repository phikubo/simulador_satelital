

%function ruido_total = ruido_termico(valores_g, lista2)

    
    
%   ruido_total=0    
%end

%vector de valores_g de g o l, pero en g.
%en .super: organizar los valores g, si es l entonces valor[i]=1/l, sino valor[i]=g

valores_g=[1.2 2.2 3.3 4.4];
tipo= ["l", "l", "g", "g"]
temperatura=[200 400 800 1000]
to=290
denominador=1
%if l entonces  valor es 1/l
%todos los elementos de valores_g son g

for i in 


for (i=1:4)
	if tipo(i)=="l"
		numerador=to*(valores_g[i]-1)

	else
		numerador=temperatura(i)
	end
    
    if i==1
    	denominador=1
    else
    	denominador=valores_g[i-1]*denominador	
    end

    ruido_total=numerador/denominador
end

%si hay 4 elementos como se muestra en la figura:
%to(l1-1)/1 + to(l2-1)/g1*1 + tamp3/g2*g1*1+ tamp4/g3*g2*g1*1