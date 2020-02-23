function vlrAte = atenuacionGasesPT(hs,densAgua,inclinacion,f)
        
    yo = ((7.1/(f^2+0.36))+4.5/((f-57)^2+0.98))*(f^2)*10^-3
    ho =6;
    
    yw = (0.067+(3/((f-22.3)^2+7.3)))*densAgua*(f^2)*10^-4
    hw = 2.2+(3/((f-22.3)^2+3))
    
    vlrAte = (yo*ho*exp(hs/ho)+yw*hw)/sind(inclinacion)
end