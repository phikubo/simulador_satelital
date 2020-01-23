function vlrfi = funfi(rp,rt,a,b,c,d)
    vlrfi = ((rp)^(a))*((rt)^(b))*exp(c*(1-rp)+d*(1-rt));
end