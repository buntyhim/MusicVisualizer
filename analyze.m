

function analyze(a,i,nff,xff)                               % nff is the segmented signal
     
    x = fft(a(i:i+nff-2),nff);                              %finding fft of the segmented signal passed to this function 
    ar = area(xff(1:nff/2),abs(x(1:nff/2))/max(abs(x))); 
    ar.EdgeColor = 'none';
    ar.FaceColor = 'green';
    xlim([50 6e3]) ;
    axis on ;                 % make it off if only waveform is required
    pause(0.01);

end
