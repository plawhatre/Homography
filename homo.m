function [H] = homo(X, Xp)
Hf=ones(3,3);
bstc=0;
[m,n]=size(X);
%appending ones
Xp(:,end+1)=ones(m,1);
X(:,end+1)=ones(m,1);
for itr=1:1000
%random poitn selection
ind=randperm(m,4);
%A_i for each from 4 selected points
A=[];
for i=1:4
%     ai=[0 0 0 -Xp(i,1) -Xp(i,2) -1 Xp(i,1)*X(i,2) Xp(i,2)*X(i,2) X(i,2);...
%         Xp(i,1) Xp(i,2) 1 0 0 0 -Xp(i,1)*X(i,1) -Xp(i,2)*X(i,1) -X(i,1)];
      ai=[0 0 0 -X(i,1) -X(i,2) -1 X(i,1)*Xp(i,2) X(i,2)*Xp(i,2) Xp(i,2);...
         X(i,1) X(i,2) 1 0 0 0 -X(i,1)*Xp(i,1) -X(i,2)*Xp(i,1) -Xp(i,1)];
    A=[A;ai];
end
[U,S,V]=svd(A);
[~,vn]=size(V);
H=reshape(V(:,vn),3,3)';
H=H./H(end,end);
%error calculation
pX=(H*Xp')';
err=X-pX;
dist=sqrt(err(:,1).^2+err(:,2).^2+err(:,3).^2);
trs=100.2;
count=0;
for i=1:m
    if dist(i)<trs
        count=count+1;
    end
end
if bstc<count
    bstc=count;
    Hf=H;
end
end
H=Hf./Hf(3,3);
end

