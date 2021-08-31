% This script run the PSO algorithm on the zigzag-based benchmark function 
% The corresponding paper can be found here: TBD
% created by: Jakub Kudela (Jakub.Kudela@vutbr.cz)

clear;clc;
format short e;

D=10;   %set problem dimension D \in [2,5,10,15,20]
if D==5
        Max_FEs = 50000;
    elseif D==10
        Max_FEs = 1000000;
    elseif D==15
        Max_FEs = 3000000;
    else
        Max_FEs = 10000000;
end

Xmin=-100; Xmax=100;
pop_size=100;
iter_max=fix(Max_FEs/pop_size);
k = 1; m = 1; % set k and m
f = @(x) F1(x,k,m); %choose either F1, or F2
% f = @(x) F2(x,k,m);
runs=30;    % choose the number of trials
for j=1:runs
    j,
    [gbest,gbestval,FES]= PSO_func(f,D,pop_size,iter_max,Xmin,Xmax);
    xbest(j,:)=gbest;
    fbest(j)=gbestval;
    fbest(j)
end    
[min(fbest) median(fbest) mean(fbest) max(fbest) std(fbest)]

