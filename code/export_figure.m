function export_figure(script_name)
%EXPORT_FIGURE Execute the script and export the figures using the script
%name.
% font_size = 30;
% line_width = 2;
if ischar(script_name) && exist(script_name,'file')
    close all;
    run(script_name);
    n_figure = length(findobj('Type', 'figure'));
    for I = 1:n_figure
        h = gcf;
        if n_figure > 1
            file_name = sprintf('%s_%d',  script_name,I);
        else
            file_name = sprintf('%s',script_name);
        end
        file_name = strcat('../fig/', file_name);
%         set(findall(h,   'Type','text'),'FontSize', font_size);
%         set(gca, 'FontSize',font_size)
%         set(findall(h, 'Type','line'), {'LineWidth'}, {line_width});
        saveas(h, file_name, 'fig');
        if exist('export_fig', 'file')
            set(gca, 'Color', 'none');
            export_fig(file_name, '-pdf', '-transparent')
        else
            print(h, '-dpdf', file_name);
        end
    end
end
end