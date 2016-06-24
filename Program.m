% Program.m
% Author: Mohammad N Altaleb
% e-mail: mohammadaltaleb@gmail.com

clear; close all; clc;

% reading the training examples
data = load('examples.txt');

% initializing matrices and variables
X = data(:, 1:2);   % design matrix
y = data(:, 3);     % results matrix
m = length(y);      % no. of training examples
theta = zeros(3, 1); % initial weights(parameters)
alpha = 0.1;        % learning rate
iterations = 50;   % iterations needed for gradient descent

% features normalizaion
[X, mu, sigma] = FeatureScaling(X);

% adding ones column to X
X = [ones(m, 1), X];

% running gradient descent
[theta, J_history] = GradientDescent(X, y, theta, alpha, iterations);

% plotting Cost function changes through iterations
plot(1: iterations, J_history, '-b');
xlabel('no. of iterations');
ylabel('Cost Function (J)');

% Predicting the price of a house with 1650 sq-ft and 3 bedrooms
price = theta' * [1; (1650 - mu(1)) / sigma(1); (3 - mu(2)) / sigma(2)];

fprintf('Prediction for a house with 1650 sq-ft and 3 bedrooms:\n');
fprintf('%.3f\n', price);
