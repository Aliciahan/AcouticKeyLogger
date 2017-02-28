%[x,fs] = audioread('q1.wav');
%s1 = x(:,1);
%figure(1);
%plot(s1);
%hold on
%s1 = s1(10000:60000);

%[y,fs2] = audioread('r1.wav');
%s2 = y(:,1);
%figure(2);
%plot(s2);
%s2 = s2(10000:60000);

%N = 512;
%Xa = real(fft(s1,N));
%Xb = real(fft(s2,N));

%X = [Xa Xb];
%T = [0 1];
%X = real(X);
%net=newpr(X,T,20);

%net =  train(net,X,T);
SW = 5200; %Window Size

[q_wav, fs_q] =  audioread('q_10.wav');
s_q = q_wav(:,1);
%plot(s_q);
q1 = s_q(46720:46720+SW);
q2 = s_q(62560:62560+SW);
q3 = s_q(96620:96620+SW);
q4 = s_q(114700:114700+SW);
q5 = s_q(135400:135400+SW);
q6 = s_q(154000:154000+SW);
q7 = s_q(173600:173600+SW);
q8 = s_q(193000:193000+SW);
q9 = s_q(212200:212200+SW);
q0 = s_q(230500:230500+SW);

N = 512;
Kq1 = real(fft(q1,N));
Kq2 = real(fft(q2,N));
Kq3 = real(fft(q3,N));
Kq4 = real(fft(q4,N));
Kq5 = real(fft(q5,N));
Kq6 = real(fft(q6,N));
Kq7 = real(fft(q7,N));
Kq8 = real(fft(q8,N));
Kq9 = real(fft(q9,N));
Kq0 = real(fft(q0,N));

[r_wav, fs_r] = audioread('r_10.wav');
s_r = r_wav(:,1);
%plot(s_r);
r1 = s_r(38600:38600+SW);
r2 = s_r(55190:55190+SW);
r3 = s_r(74250:74250+SW);
r4 = s_r(92560:92560+SW);
r5 = s_r(111100:111100+SW);
r6 = s_r(130300:130300+SW);
r7 = s_r(148300:148300+SW);
r8 = s_r(167200:167200+SW);
r9 = s_r(185000:185000+SW);
r0 = s_r(203000:203000+SW);

Kr1 = real(fft(r1,N));
Kr2 = real(fft(r2,N));
Kr3 = real(fft(r3,N));
Kr4 = real(fft(r4,N));
Kr5 = real(fft(r5,N));
Kr6 = real(fft(r6,N));
Kr7 = real(fft(r7,N));
Kr8 = real(fft(r8,N));
Kr9 = real(fft(r9,N));
Kr0 = real(fft(r0,N));

[u_wav, fs_u] =  audioread('u_10.wav');
s_u = u_wav(:,1);
%plot(s_u);
u1 = s_u(21790:21790+SW);
u2 = s_u(40080:40080+SW);
u3 = s_u(57410:57410+SW);
u4 = s_u(76500:76500+SW);
u5 = s_u(96150:96150+SW);
u6 = s_u(112700:112700+SW);
u7 = s_u(130800:130800+SW);
u8 = s_u(147400:147400+SW);
u9 = s_u(164100:164100+SW);
u0 = s_u(180400:180400+SW);
Ku1= real(fft(u1,N));
Ku2= real(fft(u2,N));
Ku3= real(fft(u3,N));
Ku4= real(fft(u4,N));
Ku5= real(fft(u5,N));
Ku6= real(fft(u6,N));
Ku7= real(fft(u7,N));
Ku8= real(fft(u8,N));
Ku9= real(fft(u9,N));
Ku0= real(fft(u0,N));

[p_wav, fs_p] =  audioread('p_10.wav');
s_p = p_wav(:,1);
%plot(s_p);
p1 = s_p(41170:41170+SW);
p2 = s_p(59500:59500+SW);
p3 = s_p(76280:76280+SW);
p4 = s_p(94460:94460+SW);
p5 = s_p(111600:111600+SW);
p6 = s_p(130000:130000+SW);
p7 = s_p(148500:148500+SW);
p8 = s_p(167800:167800+SW);
p9 = s_p(185700:185700+SW);
p0 = s_p(203400:203400+SW);
Kp1 = real(fft(p1,N));
Kp2 = real(fft(p2,N));
Kp3 = real(fft(p3,N));
Kp4 = real(fft(p4,N));
Kp5 = real(fft(p5,N));
Kp6 = real(fft(p6,N));
Kp7 = real(fft(p7,N));
Kp8 = real(fft(p8,N));
Kp9 = real(fft(p9,N));
Kp0 = real(fft(p0,N));

%X = [Kq0 Kq1 Kq2 Kq3 Kq4 Kq5 Kq6 Kq7 Kq8 Kq9 Kr0 Kr1 Kr2 Kr3 Kr4 Kr5 Kr6 Kr7 Kr8 Kr9 Ku0 Ku1 Ku2 Ku3 Ku4 Ku5 Ku6 Ku7 Ku8 Ku9 Kp0 Kp1 Kp2 Kp3 Kp4 Kp5 Kp6 Kp7 Kp8 Kp9];
%T = [0 0 0 0 0 0 0 0 0 0 1 1 1 1 1 1 1 1 1 1 2 2 2 2 2 2 2 2 2 2 3 3 3 3 3 3 3 3 3 3];
%T = [0 1 2 3];

X = [Kq0 Kq1 Kq2 Kq3 Kq4 Kq5 Kq6 Kq7 Kq8 Kq9 Kr0 Kr1 Kr2 Kr3 Kr4 Kr5 Kr6 Kr7 Kr8 Kr9];
T = [0 0 0 0 0 0 0 0 0 0 1 1 1 1 1 1 1 1 1 1];

net=   newpr(X,T,15);
net =  train(net,X,T);
y = net(X);
classes =vec2ind(y);



[testWave, fs_test] =  audioread('qruppurq_2.wav');
s_test = testWave(:,1);
plot(s_test);
test0 = s_test(45030:45030+SW);
Ktest0 = real(fft(test0,N));



