function [ exe_str ] = GenFourExe()

    for i = 1:10
        x = floor(rand()*10);
        if(x ~= 0)
            break;
        end
    end
    
    for i =1:10
        y = floor(rand()*10);
        if(y ~= 0)
            break;
        end
    end
    
    for i=1:100
        z = floor(rand()*100);
        if((x*y-z) > 0 )
            break;
        end
    end
    
    if(i<100)
        exe_str = sprintf('%d * %d - %d = ', x, y, z);
    else
        exe_str = '';
    end
end

