function [ exe_str ] = GenOneExe()

    for i = 1:10
        x = floor(rand()*10000);
%{
        if(x >= 1000)
            break;
        end
%}
    end
    
    for i = 1:10
        y = floor(rand()*10000);
%{
        if(y<10)
            continue;
        end
%}
        z = x + y;
        if(z > 10000)
            continue;
        end
%{
        if(floor(z/10) == (floor(x/10) + floor(y/10)))
            continue;
        end
%}
        break;
    end
    
    if(i<10)
        exe_str = sprintf('%d + %d = ', x, y);
    else
        tmp = sprintf('xxxxx %d + %d = ', x, y);
        exe_str = '';
    end
end

