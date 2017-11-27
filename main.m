input = floor((rand(3,1000) .* 10 ))+1;
out = zeros(1,1000);


for i=1:+1:1000
    out(1,i) = func(input,i);
end

disp(out)


save('outiiiiiiii.dat','out','-ascii');
save('iniiiiiiii.dat','input','-ascii');
