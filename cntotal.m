function CNT = cntotal(CNasc,CNdsc)

asc = 10^(CNasc/10);
dsc = 10^(CNdsc/10);

CNTveces = 1/((1/asc)+(1/dsc));

CNT = 10*log10(CNTveces);

end