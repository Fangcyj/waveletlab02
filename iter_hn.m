function output = iter_hn(phi,hn)
    temp = phi;
    out_temp = zeros(4,2*size(temp,2));
    for t = 1:size(out_temp,2)
        for n = 1:4 
            N = n-1;
            if (t-N) < 1||(t-N)>size(temp,2);%in order to improve the solution 
                out_temp(n,t) = 0;
            else
                out_temp(n,t) = hn(n)*phi(t-N);
            end
        end
    end
    
    output_temp = sum(out_temp,1);
    if size(output_temp,2) >200
        output = output_temp(1:200);
    else
        output = output_temp;
    end


end
