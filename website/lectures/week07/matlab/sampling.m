
%% Sampling Examples

t = 0:pi/100:4*pi;
x = sin(t);
%%
plot(t,x),grid
ylim([-1.5,1.5])
ts = 0:0.5:4*pi;
samples = sin(ts)
plot(t,x,ts,samples,'o')
ts = timeseries(samples,ts)
ts = setinterpmethod(ts,'zoh')
hold on
plot(ts,'LineWidth',2),grid
ylim([-1.5,1.5])