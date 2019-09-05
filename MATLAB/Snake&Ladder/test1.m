a = {'Dude', 'I', 'am', 'a', 'moose'};
b = {'Well', 'I', 'am', 'a', 'mouse'};

index = cellfun(@strcmp, a, b);
disp(index);
disp(a(index));
