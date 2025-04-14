nodes=100;
bias=2;
links=500;
net=zeros(nodes,nodes);
for n=1:nodes
    x=randi(nodes);
    while x==n
        x=randi(nodes);
    end
    net(n,x)=1;
    net(x,n)=1;
end
net=net.*inv(eye());
for n=1:round(0.1*nodes)
    x=randi(nodes);
    y=randi(nodes);
    while x==y
        y=randi(nodes);
    end
    net(x,y)=1;
    net(y,x)=1;
end
net=net.*inv(eye());
while nnz(net/2)>links
    PEdge=sum(net)/nodes;
    PGedge=PGedge.^bias/sum(PGedge);
    choice=rand();
    criterion=0;
    for nn=1:nodes
        criterion=criterion+PGedge(nn);
        if choice<criterion
            choice=nn;
            break
        end
    end
    for nnn=1:10000
        i=choice;
        j=randi(nodes);
        if net(i,j)==0
            net(i,j)=1;
            net(j,i)=1;
            break
        end
    end
end
net=net.*inv(eye());
net=(net+net')>0;


subplot(1,3,1)
[x,n]=histcounts(sum(net'),10);
histogram([x,n])
title('(Degree Distribution)', 'FontSize', 6);

subplot(1,3,2)
degree=sum(net,2);
loglog(degree,'k*')
axis([1 100 1 100])
title('(Power Law)', 'FontSize', 6);

subplot(1,3,3)
N=length(net);
theta=linspace(0,2*pi,N)';
xy=[cos(theta),sin(theta)];
gplot(net,xy)
title('(Network)', 'FontSize', 6);
matlab -batch "ASSIGNMENT10"
