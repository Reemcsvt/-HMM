function [hmm0, hmm1, hmm2, hmm3, hmm4, hmm5] = a369hmm()


hmm0=zeros(10,1); hmm0=struct;
for N_i=1:10 
hmm0(N_i).prior = [1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0];
hmm0(N_i).transmat = rand(60,60); % 3 by 3 transition matrix
for i =1:60
    for j =1:60
      if i>j
       hmm0(N_i).transmat(i,j) =0; 
      end
    end
end
hmm0(N_i).transmat = mk_stochastic(hmm0(N_i).transmat);
hmm0(N_i).obsmat = rand(60, 3); % # of states * # of observation
hmm0(N_i).obsmat = mk_stochastic(hmm0(N_i).obsmat);
end
%--------------------------------------------------------------------------
%--------------------------------------------------------------------------

hmm1=zeros(10,1); hmm1=struct;
for N_i=1:10 
hmm1(N_i).prior = [1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0];
hmm1(N_i).transmat = rand(60,60); % 3 by 3 transition matrix
for i =1:60
    for j =1:60
      if i>j
       hmm1(N_i).transmat(i,j) =0; 
      end
    end
end
hmm1(N_i).transmat = mk_stochastic(hmm1(N_i).transmat);
hmm1(N_i).obsmat = rand(60, 3); % # of states * # of observation
hmm1(N_i).obsmat = mk_stochastic(hmm1(N_i).obsmat);
end
%--------------------------------------------------------------------------
%--------------------------------------------------------------------------
hmm2=zeros(10,1);  hmm2=struct;
for N_i=1:10 
hmm2(N_i).prior = [1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0];
hmm2(N_i).transmat = rand(60,60); % 3 by 3 transition matrix
for i =1:60
    for j =1:60
      if i>j
       hmm2(N_i).transmat(i,j) =0; 
      end
    end
end
hmm2(N_i).transmat = mk_stochastic(hmm2(N_i).transmat);
hmm2(N_i).obsmat = rand(60, 3); % # of states * # of observation
hmm2(N_i).obsmat = mk_stochastic(hmm2(N_i).obsmat);
end
%--------------------------------------------------------------------------
%--------------------------------------------------------------------------

hmm3=zeros(10,1); hmm3=struct;
for N_i=1:10 
hmm3(N_i).prior = [1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0];
hmm3(N_i).transmat = rand(60,60); % 3 by 3 transition matrix
for i =1:60
    for j =1:60
      if i>j
       hmm3(N_i).transmat(i,j) =0; 
      end
    end
end
hmm3(N_i).transmat = mk_stochastic(hmm3(N_i).transmat);
hmm3(N_i).obsmat = rand(60, 3); % # of states * # of observation
hmm3(N_i).obsmat = mk_stochastic(hmm3(N_i).obsmat);
end
%--------------------------------------------------------------------------
%--------------------------------------------------------------------------

hmm4=zeros(10,1); hmm4=struct;
for N_i=1:10 
hmm4(N_i).prior = [1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0];
hmm4(N_i).transmat = rand(60,60); % 3 by 3 transition matrix
for i =1:60
    for j =1:60
      if i>j
       hmm4(N_i).transmat(i,j) =0; 
      end
    end
end
hmm4(N_i).transmat = mk_stochastic(hmm4(N_i).transmat);
hmm4(N_i).obsmat = rand(60, 3); % # of states * # of observation
hmm4(N_i).obsmat = mk_stochastic(hmm4(N_i).obsmat);
end

%--------------------------------------------------------------------------
%--------------------------------------------------------------------------

hmm5=zeros(10,1); hmm5=struct;
for N_i=1:10 
hmm5(N_i).prior = [1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0];
hmm5(N_i).transmat = rand(60,60); % 3 by 3 transition matrix
for i =1:60
    for j =1:60
      if i>j
       hmm5(N_i).transmat(i,j) =0; 
      end
    end
end
hmm5(N_i).transmat = mk_stochastic(hmm5(N_i).transmat);
hmm5(N_i).obsmat = rand(60, 3); % # of states * # of observation
hmm5(N_i).obsmat = mk_stochastic(hmm5(N_i).obsmat);
end