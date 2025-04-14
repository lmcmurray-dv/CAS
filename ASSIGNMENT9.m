n=100;
GRID= rand(n,n)>.40;
incr=[2:n,1];
decr=[n,1:n-1];
colormap(gray); clim([0 2]);

for i = 1:1000
    neighbors=GRID(incr,:)+GRID(:,incr)+GRID(incr,incr)+GRID(incr,decr)+...
    GRID(decr,incr)+GRID(decr,:)+GRID(:,decr)+GRID(decr,decr);
    GRID=(neighbors==3)|(GRID & neighbors==2);
    imshow(GRID*2)
    pause(0.01)
endweights=randi([-5,6],8,4);
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
colormap(parula_(5))

