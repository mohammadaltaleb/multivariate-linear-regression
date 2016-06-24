function J = ComputeCost(X, y, theta)
    % no. of training examples
    m = length(y);
    % calculate hypothesis vector
    h = X * theta;
    % cost function
    J = (1 / (2 * m)) * sum((h - y) .^ 2);
end