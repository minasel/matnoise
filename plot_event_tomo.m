load seiscmap
ie =3
figure(14)
clf
lalim = [min(xnode) max(xnode)];
lolim = [min(ynode) max(ynode)];
[xi yi] = ndgrid(xnode,ynode);
for ip=1:20
    subplot(4,5,ip)
    ax = worldmap(lalim, lolim);
    set(ax, 'Visible', 'off')
    surfacem(xi,yi,event_tomo(ie,ip).GV);
    drawpng
    title(['Periods: ',num2str(periods(ip))],'fontsize',15)
    colorbar
	colormap(seiscmap)
    caxis([2.5 3.5])
end

figure(13)
clf
lalim = [min(xnode) max(xnode)];
lolim = [min(ynode) max(ynode)];
[xi yi] = ndgrid(xnode,ynode);
for ip=1:20
    subplot(4,5,ip)
    ax = worldmap(lalim, lolim);
    set(ax, 'Visible', 'off')
    surfacem(xi,yi,event_tomo(ie,ip).raydense);
    drawpng
    title(['Periods: ',num2str(periods(ip))],'fontsize',15)
    colorbar
end
