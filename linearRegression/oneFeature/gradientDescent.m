function theta=gradientDescent(X,y,theta,m,number_of_iterations,alpha)
  for i=1:number_of_iterations
    c=1/m;
    theta=theta-alpha*c*X'*(X*theta-y);
    J=generateCost(X,y,theta,m)
  end
  end