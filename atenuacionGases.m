function vlrAte = atenuacionGases(p,t,densAgua,ro,f)
    %densAgua densidad del agua g/m^3
    %p Presión hPa
    %t Temperatura °C
    %ro Longuitud de trayecto km
    %f Frecuencia
    
    rp = p/1013;
    rt = 288/(273+t);
    
    E1 = funfi(rp,rt,0.0717, -1.8132,0.0156, -1.6515);
    E2 = funfi(rp,rt, 0.5146, -4.6368, -0.1921, -5.7416);
    E3 = funfi(rp,rt,0.3414, -6.5851,0.2130, -8.5854);
    
    fr1 = (7.2*(rt^2.8))/((f^2)+(0.34*(rp^2))*(rt^1.6));
    fr2 = (0.62*E3)/(((54-f)^(1.16*E1))+0.83*E2);
    
    yo = (fr1+fr2)*(f^2)*(rp^2)*(10^-3)
    
    %Vapor de agua
    
    n1 = 0.955*rp*(rt^0.68)+0.006*densAgua;
    n2 = 0.735*rp*(rt^0.5)+0.0353*(rt^4)*densAgua;
    
    sum1 = ((3.98*n1*exp(2.23*(1-rt)))/((f-22.235)^2+9.42*n1^2))*fung(f,22);
    sum2 = ((11.96*n1*exp(0.7*(1-rt)))/((f-183.31)^2+11.14*n1^2));
    sum3 = ((0.081*n1*exp(6.44*(1-rt)))/((f-321.226)^2+6.29*n1^2));
    sum4 = ((3.66*n1*exp(1.6*(1-rt)))/((f-325.153)^2+9.22*n1^2));
    sum5 = ((25.37*n1*exp(1.09*(1-rt)))/((f-380)^2));
    sum6 = ((17.4*n1*exp(1.46*(1-rt)))  /((f-448)^2));
    sum7 = ((844.6*n1*exp(0.17*(1-rt)))/((f-557)^2))*fung(f,557);
    sum8 = ((290*n1*exp(0.41*(1-rt)))/((f-752)^2))*fung(f,752);
    sum9 = (((8.3328*10^4)*n2*exp(0.99*(1-rt)))/((f-1780)^2))*fung(f,1780);
    
    yw = (sum1+sum2+sum3+sum4+sum5+sum6+sum7+sum8+sum9)*(f^2)*(rt^2.5)*(densAgua*10^-4)
        
    
    vlrAte = (yo+yw)*ro;     %Atenuacion total por gases
end