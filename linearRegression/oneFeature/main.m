%Load Data from text file
data=load("ex1data1.txt");
%Label the data
X=data(:,1);
y=data(:,2);
%Plot input X and output y
subplot(1,2,1)
plot(X,y,'rx');
ylabel("Profit in $10,000s");
xlabel("Population of City in 10,000s");
%Define the model
X=[ones(size(X,1),1),X];
theta=zeros(size(X,2),1);
m=size(X,1);
%Compute Cost
J=generateCost(X,y,theta,m)
%Modify the parameters
number_of_iterations=1500;
alpha=0.01;
theta=gradientDescent(X,y,theta,m,number_of_iterations,alpha)
hold on;
plot(X(:,2),X*theta)
hold off;
%Predict Cost
test_value=input("Enter test Value")
test_value=[ones(1,1),test_value]
profit=test_value*theta


