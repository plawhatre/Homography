clc,clear,close all
warning off
addpath(genpath('Images_Asgnmt3_1'));
%%select image
list={'I1','I2','I3','I4','I5','I6'};
[index]=listdlg('ListString',list,'SelectionMode','single');
if index==1
    I1=imread('STA_0031.JPG');
    I2=imread('STB_0032.JPG');
    I3=imread('STC_0033.JPG');
    I4=imread('STD_0034.JPG');
    I5=imread('STE_0035.JPG');
    I6=imread('STF_0036.JPG');
    %grayscaleimages
    G1=rgb2gray(I1);
    G2=rgb2gray(I2);
    G3=rgb2gray(I3);
    G4=rgb2gray(I4);
    G5=rgb2gray(I5);
    G6=rgb2gray(I6);
elseif index==2
    I1=imread('2_1.JPG');
    I2=imread('2_2.JPG');
    I3=imread('2_3.JPG');
    I4=imread('2_4.JPG');
    I5=imread('2_5.JPG');
    %grayscaleimages
    G1=rgb2gray(I1);
    G2=rgb2gray(I2);
    G3=rgb2gray(I3);
    G4=rgb2gray(I4);
    G5=rgb2gray(I5);
elseif index==3
    I1=imread('3_1.JPG');
    I2=imread('3_2.JPG');
    I3=imread('3_3.JPG');
    I4=imread('3_4.JPG');
    I5=imread('3_5.JPG');
    %grayscaleimages
    G1=rgb2gray(I1);
    G2=rgb2gray(I2);
    G3=rgb2gray(I3);
    G4=rgb2gray(I4);
    G5=rgb2gray(I5);
elseif index==4
    I1=imread('DSC02930.JPG');
    I2=imread('DSC02931.JPG');
    I3=imread('DSC02932.JPG');
    I4=imread('DSC02933.JPG');
    I5=imread('DSC02934.JPG');
    %grayscaleimages
    G1=rgb2gray(I1);
    G2=rgb2gray(I2);
    G3=rgb2gray(I3);
    G4=rgb2gray(I4);
    G5=rgb2gray(I5);
elseif index==5
    I1=imread('DSC03002.JPG');
    I2=imread('DSC03003.JPG');
    I3=imread('DSC03004.JPG');
    I4=imread('DSC03005.JPG');
    I5=imread('DSC03006.JPG');
    %grayscaleimages
    G1=rgb2gray(I1);
    G2=rgb2gray(I2);
    G3=rgb2gray(I3);
    G4=rgb2gray(I4);
    G5=rgb2gray(I5);
else
    I1=imread('1_1.JPG');
    I2=imread('1_2.JPG');
    I3=imread('1_3.JPG');
    I4=imread('1_4.JPG');
    I5=imread('1_5.JPG');
    %grayscaleimages
    G1=rgb2gray(I1);
    G2=rgb2gray(I2);
    G3=rgb2gray(I3);
    G4=rgb2gray(I4);
    G5=rgb2gray(I5);
end
%fetaure detect, select, extract and match feature
[X,Xp]=preprocess(G2,G3);
%homography calculation
H=homo(X,Xp)

%warping image
% R=img_warp(G1,G2,H)



