%Tiny Baby Feedforward Network
weights=randi([-5,6],8,4);
outputs=[];
for Z = 1:10
    inputs=randi([0,1],8,1);
    output=inputs'*weights;
    outputs=[outputs;output];
end
outputs=vertcat(outputs);
x=0:3;
y=0:9;
[xs,ys]=meshgrid(x,y);
surf(xs,ys,outputs)
