function  x = fl1(MachNum)
%Please enter an appropiate machine number for example ([1 0 1 0 1 1 4])
len = length(MachNum);
cnt = 0 ;
num = 0 ;
% Checking if all the numbers are 0s and 1s without the last index
for i=1:len-1
    if (MachNum(i) == 0) || (MachNum(i) == 1)
        cnt = cnt+1;
    end
end
% Checking if the last index is a digit
if (cnt == len-1) && (MachNum(end) == floor(MachNum(end)))
    res=1;
else
    res=0;
end
% adding all the fractions and multiplying them by the Charatctristic to
% get decimal number
if res
    for i= 2:len-1
        if MachNum(i)
            num = num + (1/(2^(i-1)));
        end
    end

    num = num * (2^MachNum(end));

    if MachNum(1) == 1
        num = - num;
    end
    % If the Machine number isnt appropriate
else
    disp("Please enter another Machine number")
end
x = num;
end
