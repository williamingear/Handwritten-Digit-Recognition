function p = Predict(theta1, theta2, X)

    m = size(X, 1);
    
    h1 = Sigmoid([ones(m, 1) X]* theta1');
    h2 = Sigmoid([ones(m, 1) h1] * theta2');
    [dummy, p] = max(h2, [], 2);
end