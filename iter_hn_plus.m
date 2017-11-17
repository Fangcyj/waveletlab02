function output = iter_hn_plus(phi,hn,N)
        temp = phi;
    for ii = 1:N
        outtemp = iter_hn(temp,hn);
        temp = outtemp;
    end
        output = temp;
       % plot(output);
end