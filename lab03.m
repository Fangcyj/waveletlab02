phi1 = sqrt(2)/2*[0,1,1,0];
phi2 = [0,0.6,0.8,0];
phi3 = rand(1,4);
phi3 = phi3/norm(phi3,2); 
h1 = sqrt(2)/8*[1,3,3,1];
h2 = sqrt(2)/4*[-1,3,3,-1];
%Define the Number of iteration
Niter1 = 10;
Niter2 = 20;
%Define a 4*N matrix to store the function value of the phi(2t-n);
p1h1n1 = iter_hn_plus(phi1,h1,Niter1);
p1h1n2 = iter_hn_plus(phi1,h1,Niter2);
p1h2n1 = iter_hn_plus(phi1,h2,Niter1);
p1h2n2 = iter_hn_plus(phi1,h2,Niter2);

p2h1n1 = iter_hn_plus(phi2,h1,Niter1);
p2h1n2 = iter_hn_plus(phi2,h1,Niter2);
p2h2n1 = iter_hn_plus(phi2,h2,Niter1);
p2h2n2 = iter_hn_plus(phi2,h2,Niter2);



p3h1n1 = iter_hn_plus(phi3,h1,Niter1);
p3h1n2 = iter_hn_plus(phi3,h1,Niter2);
p3h2n1 = iter_hn_plus(phi3,h2,Niter1);
p3h2n2 = iter_hn_plus(phi3,h2,Niter2);

subplot(2,1,1);
plot(p3h1n1);
hold on;
plot(p1h1n1);%legend('phi1');
hold on;
plot(p2h1n1);%legend('phi2');
legend('phi3','phi1','phi2');
title('Number of iteration: 10,hn = 1')

subplot(2,1,2);
plot(p3h2n1);
hold on;
plot(p1h2n1);%legend('phi1');
hold on;
plot(p2h2n1);%legend('phi2');
legend('phi3','phi1','phi2');
title('Number of iteration: 10,hn = 2') 


figure();
subplot(2,1,1);plot(p1h1n1);
title('Number of iteration: 10,initial phi1');
legend('h1')
hold on;
subplot(2,1,2);plot(p1h2n1);
legend('h2');

figure();
subplot(2,1,1);plot(p2h2n1);
title('initial phi2,using h2');
legend('Niter :10');
subplot(2,1,2);plot(p2h2n2);
legend('Niter :20');


