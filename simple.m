[x,fs] = audioread('q1.wav');
s1 = x(:,1);
figure(1);
plot(s1);
hold on
s1 = s1(10000:60000);

[y,fs2] = audioread('r1.wav');
s2 = y(:,1);
figure(2);
plot(s2);
s2 = s2(10000:60000);

N = 512;
Xa = real(fft(s1,N));
Xb = real(fft(s2,N));

X = [Xa Xb];
T = [0 1];
X = real(X);
net=newpr(X,T,20);

net =  train(net,X,T);