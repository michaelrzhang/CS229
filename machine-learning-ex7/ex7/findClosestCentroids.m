function idx = findClosestCentroids(X, centroids)
%FINDCLOSESTCENTROIDS computes the centroid memberships for every example
%   idx = FINDCLOSESTCENTROIDS (X, centroids) returns the closest centroids
%   in idx for a dataset X where each row is a single example. idx = m x 1 
%   vector of centroid assignments (i.e. each entry in range [1..K])
%

% Set K
K = size(centroids, 1);

% You need to return the following variables correctly.
idx = zeros(size(X,1), 1);

% ====================== YOUR CODE HERE ======================
% Instructions: Go over every example, find its closest centroid, and store
%               the index inside idx at the appropriate location.
%               Concretely, idx(i) should contain the index of the centroid
%               closest to example i. Hence, it should be a value in the 
%               range 1..K
%
% Note: You can use a for-loop over the examples to compute this.
%

for i = 1 : size(X, 1)
    % This is ugly code and what I initially thought
    % much better is to use the inner for loop to calculate the distance
    % for every vector
    point = X(i, :);
    norms = zeros(K, size(centroids, 2));
    for j = 1 : K
        norms(j, :) = point;
    end
    norms = norms - centroids;
    distance = sqrt(sum(abs(norms).^2,2));
    [x, idx(i)] = min(distance);
end








% =============================================================

end

