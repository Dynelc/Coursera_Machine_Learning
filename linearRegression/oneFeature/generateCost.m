function J = generateCost(X,y,theta,m)
  c=1/(2*m);
  J=c*sum((X*theta-y).^2);
  end