%Data
[N,C,UT,DT,US,DS] = a369Data_Input();
data1 = zeros(100, 60); data2 = zeros(100, 60); data3 = zeros(100, 60); data4 = zeros(100, 60); data5 = zeros(100, 60); data6 = zeros(100, 60);

for i =1:100
data1(i,:)=N(i,:);  data2(i,:)=C(i,:);   data3(i,:)=UT(i,:);  data4(i,:)=DT(i,:); data5(i,:)=US(i,:);   data6(i,:)=DS(i,:);
end

N_data=zeros(10,1);  N_data=struct;
C_data=zeros(10,1);  C_data=struct;
UT_data=zeros(10,1); UT_data=struct;
DT_data=zeros(10,1); DT_data=struct;
US_data=zeros(10,1); US_data=struct;
DS_data=zeros(10,1); DS_data=struct;


t1=0; 
for i=1:10   % Init Vectors 
%Create test Data
    ts=1;
    for j=t1+1:t1+10 
        N_data(i).test(ts,:) = data1(j,:);
        C_data(i).test(ts,:) = data2(j,:);
        UT_data(i).test(ts,:)= data3(j,:);
        DT_data(i).test(ts,:)= data4(j,:);
        US_data(i).test(ts,:)= data5(j,:);
        DS_data(i).test(ts,:)= data6(j,:);
        ts=ts+1; 
    end
%Create Train Data
    tr=1;
    for j=1:100
        if  j < t1+1 || j > t1+10 
         N_data(i).train(tr,:) = data1(j,:);
         C_data(i).train(tr,:) = data2(j,:);
         UT_data(i).train(tr,:)= data3(j,:);
         DT_data(i).train(tr,:)= data4(j,:);
         US_data(i).train(tr,:)= data5(j,:);
         DS_data(i).train(tr,:)= data6(j,:);
         tr=tr+1;
        end
     end
t1=t1+10;
end 


%Init---------
[hmm1, hmm2, hmm3, hmm4, hmm5, hmm6] = a369hmm();

%----------------------
%Training (Beum-Welch Algorithm)--------------

Iteration=1;
%fid=fopen('Result_G.txt','wt');
a_Perfect=zeros(1,60);
p_Perfect=zeros(1,60);
sumC=zeros(6,6);
sumP=zeros(6,1);
sumR=zeros(6,1);
sumA=zeros(6,1);

for N_i=1:10 
    [LL1, hmm1(N_i).prior, hmm1(N_i).transmat, hmm1(N_i).obsmat] = dhmm_em(N_data(N_i).train, hmm1(N_i).prior, hmm1(N_i).transmat, hmm1(N_i).obsmat);
end
for C_j=1:10 
    [LL2, hmm2(C_j).prior, hmm2(C_j).transmat, hmm2(C_j).obsmat] = dhmm_em(C_data(C_j).train, hmm2(C_j).prior, hmm2(C_j).transmat, hmm2(C_j).obsmat);
end
for UT_k=1:10 
    [LL3, hmm3(UT_k).prior, hmm3(UT_k).transmat, hmm3(UT_k).obsmat] = dhmm_em(UT_data(UT_k).train, hmm3(UT_k).prior, hmm3(UT_k).transmat, hmm3(UT_k).obsmat);
end
for DT_l=1:10
    [LL4, hmm4(DT_l).prior, hmm4(DT_l).transmat, hmm4(DT_l).obsmat] = dhmm_em(DT_data(DT_l).train, hmm4(DT_l).prior, hmm4(DT_l).transmat, hmm4(DT_l).obsmat);
end
for US_m=1:10 
    [LL5, hmm5(US_m).prior, hmm5(US_m).transmat, hmm5(US_m).obsmat] = dhmm_em(US_data(US_m).train, hmm5(US_m).prior, hmm5(US_m).transmat, hmm5(US_m).obsmat);
end
for DS_n=1:10 
    [LL6, hmm6(DS_n).prior, hmm6(DS_n).transmat, hmm6(DS_n).obsmat] = dhmm_em(DS_data(DS_n).train, hmm6(DS_n).prior, hmm6(DS_n).transmat, hmm6(DS_n).obsmat); 
end


for N_i=1:10 
    for C_j=1:10 
        for UT_k=1:10 
            for DT_l=1:10
                for US_m=1:10 
                    for DS_n=1:10 
                    fprintf('\n\n\n***********************Iteration= %d  \n\n\n',Iteration);
                    s_Perfect=1;
                    a_Perfect=zeros(1,60);
                    p_Perfect=zeros(1,60);
                    %Test
                    for dt =1:10
                    loglike1 = dhmm_logprob(N_data(N_i).test(dt,:), hmm1(N_i).prior, hmm1(N_i).transmat, hmm1(N_i).obsmat);
                    loglike2 = dhmm_logprob(N_data(N_i).test(dt,:), hmm2(C_j).prior, hmm2(C_j).transmat, hmm2(C_j).obsmat);
                    loglike3 = dhmm_logprob(N_data(N_i).test(dt,:), hmm3(UT_k).prior, hmm3(UT_k).transmat, hmm3(UT_k).obsmat);
                    loglike4 = dhmm_logprob(N_data(N_i).test(dt,:), hmm4(DT_l).prior, hmm4(DT_l).transmat, hmm4(DT_l).obsmat);
                    loglike5 = dhmm_logprob(N_data(N_i).test(dt,:), hmm5(US_m).prior, hmm5(US_m).transmat, hmm5(US_m).obsmat);
                    loglike6 = dhmm_logprob(N_data(N_i).test(dt,:), hmm6(DS_n).prior, hmm6(DS_n).transmat, hmm6(DS_n).obsmat);
                    X=Max_loglike(loglike1, loglike2, loglike3, loglike4, loglike5, loglike6);
                    a_Perfect(s_Perfect)=1;
                    p_Perfect(s_Perfect)=X;
                    s_Perfect=s_Perfect+1;
                    end

                    for dt =1:10
                    loglike1 = dhmm_logprob(C_data(C_j).test(dt,:), hmm1(N_i).prior, hmm1(N_i).transmat, hmm1(N_i).obsmat);
                    loglike2 = dhmm_logprob(C_data(C_j).test(dt,:), hmm2(C_j).prior, hmm2(C_j).transmat, hmm2(C_j).obsmat);
                    loglike3 = dhmm_logprob(C_data(C_j).test(dt,:), hmm3(UT_k).prior, hmm3(UT_k).transmat, hmm3(UT_k).obsmat);
                    loglike4 = dhmm_logprob(C_data(C_j).test(dt,:), hmm4(DT_l).prior, hmm4(DT_l).transmat, hmm4(DT_l).obsmat);
                    loglike5 = dhmm_logprob(C_data(C_j).test(dt,:), hmm5(US_m).prior, hmm5(US_m).transmat, hmm5(US_m).obsmat);
                    loglike6 = dhmm_logprob(C_data(C_j).test(dt,:), hmm6(DS_n).prior, hmm6(DS_n).transmat, hmm6(DS_n).obsmat);
                    X=Max_loglike(loglike1, loglike2, loglike3, loglike4, loglike5, loglike6);
                    a_Perfect(s_Perfect)=2;
                    p_Perfect(s_Perfect)=X;
                    s_Perfect=s_Perfect+1;
                    end
                    
                   for dt =1:10
                    loglike1 = dhmm_logprob(UT_data(UT_k).test(dt,:), hmm1(N_i).prior, hmm1(N_i).transmat, hmm1(N_i).obsmat);
                    loglike2 = dhmm_logprob(UT_data(UT_k).test(dt,:), hmm2(C_j).prior, hmm2(C_j).transmat, hmm2(C_j).obsmat);
                    loglike3 = dhmm_logprob(UT_data(UT_k).test(dt,:), hmm3(UT_k).prior, hmm3(UT_k).transmat, hmm3(UT_k).obsmat);
                    loglike4 = dhmm_logprob(UT_data(UT_k).test(dt,:), hmm4(DT_l).prior, hmm4(DT_l).transmat, hmm4(DT_l).obsmat);
                    loglike5 = dhmm_logprob(UT_data(UT_k).test(dt,:), hmm5(US_m).prior, hmm5(US_m).transmat, hmm5(US_m).obsmat);
                    loglike6 = dhmm_logprob(UT_data(UT_k).test(dt,:), hmm6(DS_n).prior, hmm6(DS_n).transmat, hmm6(DS_n).obsmat);
                    X=Max_loglike(loglike1, loglike2, loglike3, loglike4, loglike5, loglike6);
                    a_Perfect(s_Perfect)=3;
                    p_Perfect(s_Perfect)=X;
                    s_Perfect=s_Perfect+1;
                   end
                    
                    for dt =1:10
                    loglike1 = dhmm_logprob(DT_data(DT_l).test(dt,:), hmm1(N_i).prior, hmm1(N_i).transmat, hmm1(N_i).obsmat);
                    loglike2 = dhmm_logprob(DT_data(DT_l).test(dt,:), hmm2(C_j).prior, hmm2(C_j).transmat, hmm2(C_j).obsmat);
                    loglike3 = dhmm_logprob(DT_data(DT_l).test(dt,:), hmm3(UT_k).prior, hmm3(UT_k).transmat, hmm3(UT_k).obsmat);
                    loglike4 = dhmm_logprob(DT_data(DT_l).test(dt,:), hmm4(DT_l).prior, hmm4(DT_l).transmat, hmm4(DT_l).obsmat);
                    loglike5 = dhmm_logprob(DT_data(DT_l).test(dt,:), hmm5(US_m).prior, hmm5(US_m).transmat, hmm5(US_m).obsmat);
                    loglike6 = dhmm_logprob(DT_data(DT_l).test(dt,:), hmm6(DS_n).prior, hmm6(DS_n).transmat, hmm6(DS_n).obsmat);
                    X=Max_loglike(loglike1, loglike2, loglike3, loglike4, loglike5, loglike6);
                    a_Perfect(s_Perfect)=4;
                    p_Perfect(s_Perfect)=X;
                    s_Perfect=s_Perfect+1;
                    end
                    
                    for dt =1:10
                    loglike1 = dhmm_logprob(US_data(US_m).test(dt,:), hmm1(N_i).prior, hmm1(N_i).transmat, hmm1(N_i).obsmat);
                    loglike2 = dhmm_logprob(US_data(US_m).test(dt,:), hmm2(C_j).prior, hmm2(C_j).transmat, hmm2(C_j).obsmat);
                    loglike3 = dhmm_logprob(US_data(US_m).test(dt,:), hmm3(UT_k).prior, hmm3(UT_k).transmat, hmm3(UT_k).obsmat);
                    loglike4 = dhmm_logprob(US_data(US_m).test(dt,:), hmm4(DT_l).prior, hmm4(DT_l).transmat, hmm4(DT_l).obsmat);
                    loglike5 = dhmm_logprob(US_data(US_m).test(dt,:), hmm5(US_m).prior, hmm5(US_m).transmat, hmm5(US_m).obsmat);
                    loglike6 = dhmm_logprob(US_data(US_m).test(dt,:), hmm6(DS_n).prior, hmm6(DS_n).transmat, hmm6(DS_n).obsmat);
                    X=Max_loglike(loglike1, loglike2, loglike3, loglike4, loglike5, loglike6);
                    a_Perfect(s_Perfect)=5;
                    p_Perfect(s_Perfect)=X;
                    s_Perfect=s_Perfect+1;
                    end
                    
                    for dt =1:10
                    loglike1 = dhmm_logprob(DS_data(DS_n).test(dt,:), hmm1(N_i).prior, hmm1(N_i).transmat, hmm1(N_i).obsmat);
                    loglike2 = dhmm_logprob(DS_data(DS_n).test(dt,:), hmm2(C_j).prior, hmm2(C_j).transmat, hmm2(C_j).obsmat);
                    loglike3 = dhmm_logprob(DS_data(DS_n).test(dt,:), hmm3(UT_k).prior, hmm3(UT_k).transmat, hmm3(UT_k).obsmat);
                    loglike4 = dhmm_logprob(DS_data(DS_n).test(dt,:), hmm4(DT_l).prior, hmm4(DT_l).transmat, hmm4(DT_l).obsmat);
                    loglike5 = dhmm_logprob(DS_data(DS_n).test(dt,:), hmm5(US_m).prior, hmm5(US_m).transmat, hmm5(US_m).obsmat);
                    loglike6 = dhmm_logprob(DS_data(DS_n).test(dt,:), hmm6(DS_n).prior, hmm6(DS_n).transmat, hmm6(DS_n).obsmat);
                    X=Max_loglike(loglike1, loglike2, loglike3, loglike4, loglike5, loglike6);
                    a_Perfect(s_Perfect)=6;
                    p_Perfect(s_Perfect)=X;
                    s_Perfect=s_Perfect+1;
                    end
                    
                    stats = confusionmatStats(a_Perfect,p_Perfect);
                    sumC = sumC + stats.confusionMat;
                    sumP = sumP + stats.precision;
                    sumR = sumR + stats.recall;
                    sumA = sumA + stats.accuracy;
                    Iteration=Iteration+1;
                   end
                end
            end
        end
    end
end


Res_C=sumC/1000000;
Res_P=sumP/1000000;
Res_R=sumR/1000000;
Res_A=sumA/1000000;
disp(Res_A);
disp(Res_C);
disp(Res_P);
disp(Res_R);
confMatPlot(Res_C);


