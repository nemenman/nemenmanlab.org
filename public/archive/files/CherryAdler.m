%%pcn and Jason Prentice 10/2013  CherryAdler.m
% bistability of a hypothetical switch consisting of two mutually repressing elements
% following Cherry and Adler 00
clear all; close all
fancy = 0; % =0 to omit the streamlines, or 1 to include them
%%  
n = 2.2;            % Hill coeff (cooperativity parameter): compare 1 vs 2.4
Gamma = 1.2;        % nondimensionalized maximum production rate: compare 1.2 vs 1.8
cbar=(0.1*Gamma):(0.001*Gamma):(1.1*Gamma); % nondimensionalized concentration of one repressor
othercbar=Gamma*((1+(cbar.^n)).^(-1));
figure(1); set(gca,'FontSize',14)
plot(cbar,othercbar,'g','LineWidth',1);
hold on
plot(othercbar,cbar,'r','LineWidth',1); xlabel('cbar1','FontSize',14); ylabel('cbar2','FontSize',14);
title('linear plot of binding curves','FontSize',14)
axis equal
%% Make the flow field
cbar=(0.1*Gamma):(0.1*Gamma):(1.1*Gamma);
[X,Y]=meshgrid(cbar);
U=-X+(Gamma./(1+Y.^n));
V=-Y+(Gamma./(1+X.^n)); 
% rescale the arrows so we can see the shorter ones:
UVnorms=(U.^2+V.^2).^0.5; top=max(max(UVnorms));
scaling=UVnorms;
for i=1:length(UVnorms(:)),
    if UVnorms(i)<(top/10),
        scaling(i)=UVnorms(i)*10/2;
    else
        scaling(i) = top - (top-UVnorms(i))/(2*0.9);
    end;end
scaling=scaling./UVnorms;
figure(1);
quiver(X,Y,U.*scaling,V.*scaling,1); 
title(['nullclines and flow field for genetic switch, n=' num2str(n),', Gammabar=' num2str(Gamma)],'FontSize',14)
axis equal; axis tight
hold off; box off
%% part e.
Gamma = 2.2;
cbar=(0.1*Gamma):(0.001*Gamma):(1.1*Gamma); % nondimensionalized concentration of one repressor
othercbar=Gamma*((1+(cbar.^n)).^(-1));
figure(2); set(gca,'FontSize',14)
plot(cbar,othercbar,'g','LineWidth',1);
hold on
plot(othercbar,cbar,'r','LineWidth',1); xlabel('cbar1','FontSize',14); ylabel('cbar2','FontSize',14);
title('linear plot of binding curves','FontSize',14)
axis equal
%% 
% Make the flow field
cbar=(0.1*Gamma):(0.1*Gamma):(1.1*Gamma);
[X,Y]=meshgrid(cbar);
U=-X+(Gamma./(1+Y.^n));
V=-Y+(Gamma./(1+X.^n)); 
% rescale the arrows so we can see the shorter ones:
UVnorms=(U.^2+V.^2).^0.5; top=max(max(UVnorms));
scaling=UVnorms;
for i=1:length(UVnorms(:)),
    if UVnorms(i)<(top/10),
        scaling(i)=UVnorms(i)*10/2;
    else
        scaling(i) = top - (top-UVnorms(i))/(2*0.9);
    end;end
scaling=scaling./UVnorms;
figure(2);
quiver(X,Y,U.*scaling,V.*scaling,1); 
title(['nullclines and flow field for genetic switch, n=' num2str(n),', Gammabar=' num2str(Gamma)],'FontSize',14)
axis equal; axis tight
hold off; box off
%% now add streamlines if desired
% use a finer grid for the actual integration: 
if fancy==1,
    Gamma=1.2;
    [Xf,Yf]=meshgrid((Gamma/100):(Gamma/50):(1.1*Gamma));
    Uf=-Xf+(Gamma./(1+Yf.^n));
    Vf=-Yf+(Gamma./(1+Xf.^n)); 
    figure(1); 
    %%
    h=streamline(Xf,Yf,Uf,Vf,[0.93, .2], [0.1 .6]);
    set(h,'Color','black','LineWidth',1)
end