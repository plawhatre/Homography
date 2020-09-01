function [R] = img_warp(G1,G2,H)
[gm,gn]=size(G2);
loc=[];
xmap=zeros(gm,gn);
ymap=zeros(gm,gn);
for gi=1:gm
    for gj=1:gn
        temp=[gi; gj; 1];
        nw=H*temp;
        xmap(gi,gj)=nw(1);
        ymap(gi,gj)=nw(2);
    end
end
xmap=xmap(:);
ymap=ymap(:);
loc(1,:)=xmap;
loc(2,:)=ymap;
loc(3,:)=ones(1,length(xmap));
tloc=H*loc;
tloc(1:2,:)=tloc(1:2,:)./tloc(3,:);
tloc=ceil(tloc);
%min-max for img1
xmin1=1;
[xmax1,~]=size(G1);
ymin1=1;
[~,ymax1]=size(G1);
%min-max for img2
xmin2=min(tloc(1,:));
xmax2=max(tloc(1,:));
ymin2=min(tloc(2,:));
ymax2=max(tloc(2,:));
%min-max for frame
xmin=min(xmin1,xmin2);
xmax=max(xmax1,xmax2);
ymin=min(ymin1,ymin2);
ymax=max(ymax1,ymax2);
%frame size
%recentre
xc=xmin;
yc=ymin;
R=zeros(xmax-xmin,ymax-ymin,3);
%shifting points
loc1=[];
loc2=[];
[gm,gn]=size(G1);
for gi=1:gm
    for gj=1:gn
        xmap(gi,gj)=gi;
        ymap(gi,gj)=gj;
    end
end
xmap=xmap(:);
ymap=ymap(:);
loc1(1,:)=xmap;
loc1(2,:)=ymap;
[gm,gn]=size(G2);
loc2=tloc(1:2,:);
end

