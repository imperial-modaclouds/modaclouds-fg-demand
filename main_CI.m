function demandEst = main_CI(data, initSample, sampleSize, V, W)
% MAIN_CI setups the input data for the CI estimation method and calls it
%
% data:         data in standard format
% initSample:   first sample to consider 
% sampleSize:   number of samples to use for anaysis
% W:            max number of jobs in service
% V:            number of processors
%
% Copyright (c) 2012-2014, Imperial College London 
% All rights reserved.

if nargin < 4
    W = 1000;
end

K = size(data,2)-1;
times = cell(1,K);
for k = 1:K
    times{k} = [data{3,k}/1000 data{4,k}];
end

[demandEst,obs] = des_CI(times, initSample, sampleSize,W,V);