
function [pID,turn,x,px,y,py,t,pt,s] = Read_Particles_Setti(fileName,readFormat, nHeader ,Comments_String)

% Reading losses file 

fileID = fopen(fileName,'r');

table_loss = textscan(fileID,readFormat,'CommentStyle',Comments_String, 'HeaderLines', nHeader);
fclose(fileID);


% Post processing 

pID = table_loss{1};    %Particle ID
turn = table_loss{2};   %Turn of loss
x = table_loss{3};
px = table_loss{4};
y = table_loss{5};
py = table_loss{6};
t = table_loss{7};
pt = table_loss{8};
s = table_loss{9};

return
%% Plots 

% Plot (x,x') phase space at the SEPTUM
figure; 
subplot(2,1,1);hold on
scatplot(x*1E+3,px*1E+3);
%scatter(x*1E+3,px*1E+3,'.');

% axis('equal');
xlabel('x [mm]'); ylabel('xp [mrad]'); title('Particle distribution at the entrance of the MSP')

% Plot (y,y') phase space at the SEPTUM
subplot(2,1,2);hold on
scatplot(y*1E+3,py*1E+3);
%scatter(y*1E+3,py*1E+3,'.');

% axis('equal');
xlabel('y [mm]'); ylabel('yp [mrad]'); 


%% X and Y profile 
figure; hold on;
histogram(x*1.0E+3, 500,'DisplayStyle', 'stairs', 'LineWidth', 1.5);
histogram(y*1.0E+3,500, 'DisplayStyle', 'stairs', 'LineWidth', 1.5);

legend('x', 'y')
title('Particle distribution at the entrance of the MSP')
xlabel('size [mm]'); ylabel('N particles'); 

autoArrangeFigures(2,2,1)