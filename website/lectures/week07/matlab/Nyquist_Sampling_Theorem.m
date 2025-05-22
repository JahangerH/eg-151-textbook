clear all
close all

%Generate and plot sine wave


   F = 5000;                   % points per second
   dt = 1/F;                   % seconds per sample
   StopTime = 3;             % seconds
   t = (0:dt:StopTime-dt)';     % seconds

   Fc = 1;                     % hertz Signal frequency
   x = sin(2*pi*Fc*t);


  figure (1);
  subplot(3,1,1);
        hold on
		plot(t,x);
		xlabel('Time(s)')
        hold off


%Plot back to sine

samplingFreq=2;                                                  %Sample Frequency
resolution = 3
Q=2^resolution;                                                   %number of quantisation states

Q=Q-1;

Diff=round(F/samplingFreq);

        s = x((0.5*Diff) : Diff : end);

        s=s+1;
        s=round(s*(Q*0.5));
        t3 = t((Diff*0.5) : Diff : end);

  figure (1);
  subplot(3,1,2);
        stem(t3,s)
        hold on
        stairs(t3,s)
		xlabel('Time(s)')
        hold off
		set(gca,'YLim',[0 Q],'YTick',[0 : 1 : Q])
		set(gca,'yticklabel',dec2bin(get(gca,'ytick'),resolution))



  figure (1);
  subplot(3,1,3);
		hold on
        plot(t3,s, '-o');
		xlabel('Time(s)')
        hold off
		set(gca,'YLim',[0 Q],'YTick',[0 : 1 : Q])
        set(gca,'yticklabel',dec2bin(get(gca,'ytick'),resolution))