function [content] = GenExe(num)
    file =  sprintf('exe%0d.csv', num);

    content = '';
    for i = 1:25
        line = '';
        for j = 1:4
            type = mod(floor(rand()*100), 2);
            for count = 1:100
                if(type == 0)
                    str = GenFiveExe();
                else
                    str = GenSixExe();
                end
                if(size(str, 2) > 5)
                    break;
                end
            end
        
            if(size(line, 2) < 3)
                line = sprintf('%s,        ,', str);
            else
                line = sprintf('%s%s,        ,', line, str);
            end
        end
        content = sprintf('%s%s\n', content, line);
    end

    content = sprintf('%sClass________,________,Name________,________,Score________,________,Time________', content);

    fprintf('%s', content);
    fid = fopen(file, 'w');
    fprintf(fid, '%s', content);
    fclose(fid);

end