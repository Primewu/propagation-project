
dzt = 1:dz:Z;
dxt = -X:dx:X;
koko=abs(Uxz);
koko2=-20*log10(max(koko,1e-10))+20*log10(4*pi)-30*log10(lamda)+10.*log10(pathloss_xz);%
Uro=rot90(koko2);
Uabs=Uro;
 figure;
image(dzt,dxt,Uabs,'CDataMapping','scaled')
colormap(jet);
colorbar('EastOutside'); 
title('XZ-cross section');
xlabel('Z');
ylabel('X');

 %% XY面

dyt = 0:dy:Y;
dxt = -X:dx:X;
koko=abs(Uxy);
koko2=-20*log10(max(koko,1e-10))+20*log10(4*pi)-30*log10(lamda);%+10.*log10(pathloss_xz)
Uro=fliplr(koko2);
Uabs=Uro;
 figure;
image(dxt,dyt,Uabs,'CDataMapping','scaled')
colormap(jet);
colorbar('EastOutside'); 
set(gca,'YDir','normal');
title('XY-cross section');
xlabel('Y');
ylabel('X');


