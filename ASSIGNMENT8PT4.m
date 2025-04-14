hh=0;
Heads=1;
for n=1:10000
    flip1=randi([0,1]);
    if flip1==Heads
        flip2=randi([0,1]);
        if flip2==Heads
            hh=hh+1;
        end
    end
end
hh/10000