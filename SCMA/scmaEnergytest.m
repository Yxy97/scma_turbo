%% my codebook
clear;
M=4;
N=2;
K=4;
J=6;
F=[0 1 0 1;
    1 0 1 0;
    1 1 0 0;
    0 0 1 1;
    1 0 0 1;
    0 1 1 0;]';
S=zeros(K,J,M);
S(:,:,1)=[0,-0.1815-0.1318*i,0,0.7851;0.7851,0,-0.7815-0.1318*i,0;-0.6351+0.4615*i,0.1392-0.1759*i,0,0;
    0,0,0.7851,-0.0055-0.2242*i;-0.0055-0.2242*i,0,0,-0.6351+0.4615*i;0,0.7851,0.1392-0.1759*i,0;].';
S(:,:,2)=[0,-0.6351-0.4615*i,0,-0.2243;-0.2243,0,-0.6351-0.4615*i,0;0.1815-0.1318*i,0.4873-0.6156*i,0,0;
    0,0,-0.2243,-0.0193-0.7848*i;-0.0193-0.7848*i,0,0,0.1815-0.1318*i;0,-0.2243,0.4873-0.6156*i,0;].';
S(:,:,3)=[0,0.6351+0.4615*i,0,0.2243;0.2242,0,0.6351+0.4615*i,0;-0.1815+0.1318*i,-0.4873+0.6156*i,0,0;
    0,0,0.2243,0.0193+0.7848*i;0.0193+0.7848*i,0,0,-0.1815+0.1318*i;0,0.2243,-0.4873+0.6156*i,0;].';
S(:,:,4)=[0,0.1815+0.1318*i,0,-0.7851;-0.7851,0,0.1815+0.1318*i,0;0.6351-0.4615*i,-0.1392+0.1759*i,0,0;
    0,0,-0.7851,0.0055+0.2242*i;0.0055+0.2242*i,0,0,0.6351-0.4615*i;0,-0.7851,-0.1392+0.1759*i,0;].';



scale=100000;
for ii=1:scale
    data=randi([1 4],6, 1);
    x=zeros(4,1);
    for jj=1:6
        x=x+S(:,jj,data(jj));
    end
    energy(ii)=sum((abs(x)).^2)/4;
end
average=sum(energy)/scale