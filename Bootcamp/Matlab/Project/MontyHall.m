clear all;

tries = 100;

nochange = 0;
nnochange =0;
change = 0;
nchange = 0;
for i = 1:tries % The player do not change his door

    %%%%
    % The prices are placed behind the doors
    pricePlace = floor(rand(1)*3)+1;
    prices = zeros(3,1);
    prices(pricePlace) = 1;

    %%%%
    % The player choses a door

    chosenDoor = floor(rand(1)*3)+1;

    %%%%
    % The host opens a door

    openedDoor = pricePlace;
    while openedDoor == pricePlace
        openedDoor = floor(rand(1)*3)+1;
    end


    if chosenDoor == pricePlace
        nochange = nochange+1;
    end


end



for i = 1:tries % The player do not change his door

    %%%%
    % The prices are placed behind the doors
    pricePlace = floor(rand(1)*3)+1;
    prices = zeros(3,1);
    prices(pricePlace) = 1;

    %%%%
    % The player choses a door

    chosenDoor = floor(rand(1)*3)+1;

    %%%%
    % The host opens a door

    openedDoor = pricePlace;
    while openedDoor == pricePlace
        openedDoor = floor(rand(1)*3)+1;
    end


    rechoice = chosenDoor;
    while rechoice == chosenDoor && rechoice == openedDoor
        rechoice = floor(rand(1)*3)+1;
    end

    if rechoice == pricePlace
        change = change +1;
    end

end






probNoChange = (nochange/tries)*100;
probChange = (change/tries)*100;

disp('Proba for not changing the door :');
disp(probNoChange);
disp('');
disp('Proba for changing the door :');
disp(probChange);