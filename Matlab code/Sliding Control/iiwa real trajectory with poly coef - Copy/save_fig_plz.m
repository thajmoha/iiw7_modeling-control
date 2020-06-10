global fname ifig save_flag
if save_flag ==1;
ifig = ifig+1;
filename = strcat('fig',num2str(ifig));
saveas(gca, fullfile(fname, filename), 'png');
end