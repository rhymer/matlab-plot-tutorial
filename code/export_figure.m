function export_figure( script_name )
%EXPORT_FIGURE Execute the script and export the figures using the script
%name.
font_size = 30;
if ischar(script_name) && exist(script_name,'file')
    close all;
    run(script_name);
    n_figure = length(findobj('Type','figure'));
    for I = 1:n_figure
        h = gcf;
        if n_figure > 1
            file_name = sprintf('%s_%d',script_name,I);
        else
            file_name = sprintf('%s',script_name);
        end
        set(findall(h,'Type','text'),'FontSize',font_size);
        set(gca,'FontSize',font_size)
        print(h,'-depsc2',strcat('../eps/',file_name));
        saveas(h,file_name,'fig');
    end
end
end

