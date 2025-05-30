function stpSaveFigure(path, name)
%% This function is used to save the current figure into pictures with different formats, including
% jpg, figure, emf, eps, pdf, tif, png.
%
% Inputs
% path : the file path for saving file.
%
% name : the name of the figure
    
    if isempty(name) || strcmp(name, 'tmp') || name(1) == '_'
        return;
    end


    mkdir(sprintf('%s/figure', path));
    mkdir(sprintf('%s/jpg', path));
    mkdir(sprintf('%s/emf', path));
    mkdir(sprintf('%s/eps', path));
    mkdir(sprintf('%s/pdf', path));
    mkdir(sprintf('%s/tif', path));
    mkdir(sprintf('%s/png', path));

    
    set(gcf, 'paperPositionMode', 'auto');
%     set(gcf, 'paperUnits', 'points');
%     pos = get(gcf, 'position');
%     set(gcf, 'paperposition', pos);
%     set(gcf, 'PaperSize', pos(3:4));
    fig = gcf;
    fig.PaperPositionMode = 'auto';
    fig_pos = fig.PaperPosition;
    
    if(fig_pos(1) < 1)
        set(gcf,'Units','normalized');
    end
    
    fig.PaperSize = [fig_pos(3) fig_pos(4)];

    fileName = sprintf('%s/figure/%s.fig', path, name);
    saveas(gcf, fileName, 'fig');
    
    fileName = sprintf('%s/jpg/%s.jpg', path, name);
    print('-djpeg', '-r600', fileName);
    
    fileName = sprintf('%s/tif/%s.tif', path, name);
    print('-dtiff', '-r600', fileName);
    
    fileName = sprintf('%s/emf/%s.emf', path, name);
    print('-dmeta', fileName);
    
    fileName = sprintf('%s/png/%s.png', path, name);
    print('-dpng', '-r600', fileName);
    
    fileName = sprintf('%s/eps/%s.eps', path, name);
    print('-depsc', fileName);
    
    fileName = sprintf('%s/pdf/%s.pdf', path, name);
    saveas(gcf, fileName);
    
end