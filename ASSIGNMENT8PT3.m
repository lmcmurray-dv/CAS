ff=[];
x=randi([0,1],10000,1);
for n=4:9999
    if all(x(n-3:n)==1)
        ff=[ff;x(n+1)];
    end
end
proportion=sum(ff==0)/length(ff);
if proportion>=0.5
    disp('At least half are tails')
else
    disp('Less than half are tails')
end
