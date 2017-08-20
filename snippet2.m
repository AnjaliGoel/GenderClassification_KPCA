function snippet2()
load trainData;
load trainLabel;
load testData;
SVM = svmtrain(trainData' ,trainLabel,'Kernel_Function','rbf', 'RBF_Sigma', 2^18, 'BoxConstraint', 2^-8);
predictedResult = svmclassify(SVM,testData');
load testLabel;
result = predictedResult - testLabel
nnz(result)
end