clear, clc, clf

sim='hard';

if strcmp(sim,'easy')
    sigma=0.1;
else
    sigma=ones(1,1,2);
    sigma(1,1,2)=2;
end


n=100;
mu0=0;
mu1=1;
mu=[mu0, mu1]';
pi=0.5*[1, 1 ]';

gm = gmdistribution(mu,sigma,pi);

[X,Y]=random(gm,n);
ntest=1000;
[Xtest,Ytest]=random(gm,ntest);


%%
figure(1), clf
subplot(211), plot(X,Y,'.')
title([sim, ' simulation'])
ylabel('class')
xlabel('sample')

%%
[class,err,posterior]=classify(Xtest,X,Y);

subplot(212),
hold all
plot(posterior(Ytest==1),'r.')
plot(posterior(Ytest==2),'g.')
axis('tight')
ylabel('posterior')
xlabel('sample')

print([sim, '1'],'-dpng')


%%

n=10;
for i=1:100
    [X,Y]=random(gm,n);
    ntest=1000;
    [Xtest,Ytest]=random(gm,ntest);
    [~,err(i)]=classify(Xtest,X,Y);
    [Xbayes,Ybayes]=random(gm,n*1000);
    [~,bayes_err(i)]=classify(Xtest,Xbayes,Ybayes);

end

%%
figure(2), clf, hold all
plot(err,'o')
plot(bayes_err,'.r')
ylim([0,1])
title('summary statistics')
ylabel('misclassification rate')
xlabel('trial #')


print([sim, '2'],'-dpng')

%% iris simulation

load('fisheriris')
y=species;
X=meas;
cp=cvpartition(y,'k',10);
classf = @(XTRAIN, ytrain, XTEST)(classify(XTEST,XTRAIN,ytrain));

cvMCR=crossval('mcr',X,y,'predfun',classf,'partition',cp);
