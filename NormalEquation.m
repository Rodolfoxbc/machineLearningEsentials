#Cargar el dataset
data=dlmread("data.csv",";");

#Extract features (X) and labels (Y)
#we suppose that labels are the last column
X=data(:,1:size(data,2)-1);
y=data(:,size(data,2));

#Add interception term
X=[ones(size(X,1),1) X];

#Apply normal equation to find out tetha values
theta=pinv(X'*X)*(X'*y)

#With theta values we need calculate hypothesis
h=X*theta;

#Determinate cost function (J)
J=(sum((hipotesis-y).^2)/size(X,1))^(0.5)
