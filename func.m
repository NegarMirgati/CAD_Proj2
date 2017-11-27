function output = func(input,i)
    output= ( (-1).* input(2,i) +abs(sqrt( abs( input(2,i) .* input(2,i) - 4 .* input(1,i) .*input(3,i))))) ./ ( 2.*input(1,i) .* sin(input(1,i) .* pi) );
end