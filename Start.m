file = 'final.csv';

final_content = '';

for i = 0:9
    math_content = GenExe(i);
    final_content = sprintf('%s\n\n\n%s', final_content, math_content);
end

fid = fopen(file, 'w');
fprintf(fid, '%s', final_content);
fclose(fid);