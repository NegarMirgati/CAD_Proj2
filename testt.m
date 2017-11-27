inputTest = floor((rand(3,50) .* 10 ))+1;

tStartNN = cputime;
outputNN = net(inputTest);
tNN = cputime - tStartNN;
disp(tNN)

tStartF = cputime;
outputF = zeros(1,50);
for i=1:+1:50
    outputF(1,i) = func(inputTest,i);
end
tF = cputime - tStartF;
disp(tF)

temp = outputNN - outputF ;
s = sum(temp);
sfinal = sum(s,2);

sOutF = sum(outputF);
SOutputF = sum(sOutF,2);

answer = abs(sfinal) ./ abs(SOutputF).*100;
disp(answer)
