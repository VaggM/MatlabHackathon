hiddenLayerSizes = [10];

net = patternnet(hiddenLayerSizes);
net.trainFcn = 'trainscg';

% Configure input and output sizes
% Assuming you have input data X (18 x N) and target labels T (3 x N)
% X: 18 features, N samples
% T: 3 x N one-hot encoded target labels for 3 classes
N=100
X = rand(18,N);

labels = randi(3,N);
labels_onehot = zeros(3,N);
for i=1:N
    labels_onehot(labels(i),i) = 1;
end

net.divideParam.trainRatio = 0.7;
net.divideParam.valRatio   = 0.15;
net.divideParam.testRatio  = 0.15;

% Train the network
[net, tr] = train(net, X, labels_onehot);

% Test the network
Y = net(X);
predictedClasses = vec2ind(Y);  % Converts output to class indices (1-3)
trueClasses = vec2ind(T);       % Converts target to class indices

% Calculate accuracy
accuracy = sum(predictedClasses == trueClasses) / numel(trueClasses);
fprintf('Classification Accuracy: %.2f%%\n', accuracy * 100);
