function [ Cmap ] = jet_mod(varargin)
if isempty(varargin); N = 128; else N = varargin{1}; end

C = [0,0,0;0.0506008863449097,0.108791910111904,0.354206204414368;0.0715260058641434,0.236913904547691,0.594288170337677;0.0561807341873646,0.388661563396454,0.694884955883026;0.0431372560560703,0.517647087574005,0.780392169952393;0.117892153561115,0.555330932140350,0.719424009323120;0.416911751031876,0.706066191196442,0.475551486015320;0.715931355953217,0.856801509857178,0.231678932905197;0.996874988079071,0.984375000000000,0.00312500004656613;0.934374988079071,0.671875000000000,0.0656250044703484;0.871874988079071,0.359375000000000,0.128124997019768;0.809374988079071,0.0468750000000000,0.190624997019768;0.587500035762787,0,0.200000002980232;0.400000005960465,0,0.200000002980232];   
ci = [0,21,41,61,81,101,121,141,161,181,201,221,241,256]./256;
v = linspace(0,1,N);

Cmap = interp1(ci,C,v,'linear','extrap');


end

