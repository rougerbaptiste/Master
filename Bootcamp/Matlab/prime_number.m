%%%%
% Compute the sum of the first 100 prime numbers

% specify to wich number check : ok
%plot the prime numbers by their index :
% find quickly the prime numbers : ok
% make the plot fit to a polynome

max = input("Put the number to wich you want to check the prime numbers : \n");
primes = [2];
sum = 2;
for i=2:max
    isPrime = 1;
    for i2 = primes
        % disp(mod(i,i2)==0);
        if mod(i,i2)==0
            % disp('Ho');
            isPrime=0;
        end
    end
    % disp(isPrime);
    if isPrime == 1
        % disp('Hi');
        primes(end +1)=i
        sum = sum + i;
    end
    disp(primes);
end

disp(primes);
disp(sum);

absc = 1:length(primes);
plot(absc, primes,'*')
