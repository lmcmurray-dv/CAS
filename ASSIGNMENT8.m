%Tiny Baby Attractor Network
x=randi([1,100],1,6);
b=x*1/sum(x);
activations=[];
while any(b < 0.95)
    b = b-0.1;
        if any(x < 0)
        x=0;
        end
    b=b*1/sum(b);
    activations=[activations;b];
end
plot(activations,'-')
grid("on")



