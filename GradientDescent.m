function [theta, J_history] = GradientDescent(X, y, theta, alpha, iterations)

    % preparing variables
    m = length(y);  % no. of training examples
    J_history = zeros(iterations, 1);  % cost function changes
    t = theta;  % temporal variables

    for i = 1: iterations,
        h = X * theta;
        for j = 1: length(theta),
            t(j) = theta(j) - alpha * (1 / m) * sum((h - y) .* X(:, j));
        end
        theta = t;
        
        J_history(i) = ComputeCost(X, y, theta);
    end

end