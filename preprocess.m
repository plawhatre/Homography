function [X,Xp] = preprocess(G1,G2)
%%detect features
points1=detectSURFFeatures(G1);
points2=detectSURFFeatures(G2);

%%extract features
[features1,valid_points1] = extractFeatures(G1,points1);
[features2,valid_points2] = extractFeatures(G2,points2);

%%match features
indexPairs1 = matchFeatures(features1,features2);
matchedPoints11 = valid_points1(indexPairs1(:,1),:);
matchedPoints12 = valid_points2(indexPairs1(:,2),:);

%%Show matched features
figure; showMatchedFeatures(G1,G2,matchedPoints11,matchedPoints12,'montage');
%
X=matchedPoints11.Location;
Xp=matchedPoints12.Location;
end

