Weight array and COG calculation
weight = 8812:10:16020;
xdatum = 11.5;
xrg = xdatum + 1.8; % Rear Gear location on x axis
xfg = xdatum - 7.5; % Front Gear location on x axis
for i=1:length(weight)
    xcg = ((369.99*(xfg-xrg)./weight)+xrg) - xdatum;
end    
plot(xcg, weight, 'color','black') % Front structrual limit 
hold off
Graphing
hold on
plot([1.58510448413690 1.8], [16020 16020], 'color','black') % MTOW
plot([1.8 1.8], [8812 16020], 'color','black') % Rear Gear
plot([1.40952031320926 1.8], [8812 8812], 'color','black')
grid on; grid minor

xlim([-0.46 2.18])
ylim([5454 18631])

plot(1.525, 8812, 'rx')