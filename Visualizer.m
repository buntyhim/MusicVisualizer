clc
[filename,path] = uigetfile('*.mp3','Select Song');
[a,Fs] = audioread([path filename]);
a = a(:,1);
p = audioplayer(a,Fs);
nfft = 1024*4;
xfft = Fs*(0:nfft/2-1)/nfft;
figure('Name','VISUALIZER','Color','[0 0.4 0.1]')

play(p);
p.TimerFcn = 'analyze';
p.TimerPeriod = 0.025;


while 1
    i = p.CurrentSample;
    analyze(a,i,nfft,xfft);
    if (i >= length(a))
        break ;
    end
end
stop(p);
close all;