function [ exe_str ] = GenFiveExe()

    for i = 1:100
        x = floor(rand()*1000);
        if(x<100)
            continue;
        end
        break;
    end
    
    for i = 1:10
        y = floor(rand()*1000);
        if(y < 10)
            continue;
        end
        z = x - y;
        if(z < 0)
            continue;
        end
        
        break;
    end
    
    if(i<10)
        exe_str = sprintf('%d - %d = ', x, y);
    else
        exe_str = '';
    end
end

