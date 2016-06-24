% FeatureScaling.m
% Author: Mohammad N Altaleb
% e-mail: mohammadaltaleb@gmail.com

function [X, mu, sigma] = FeatureScaling(X)
    % calculating the mean and standard devietion
    mu = mean(X);
    sigma = std(X);
    
    % scaling the features
    for i = 1: length(mu),
        X(:, i) = (X(:, i) - mu(i)) ./ sigma(i);
    end
end
