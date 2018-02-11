clear all;clc;
load atListAll;
model = perform_kpca_PhD('D:/second sem term paper/atDatabase/',atListAll,'poly',[0 2],64);
trainData = model.train(:,1:240);
crossData = model.train(:,241:320);
testData = model.train(:,321:400);
save trainData trainData;
save testData testData;