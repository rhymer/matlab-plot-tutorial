%% USING CELL ARRAY TO SPECIFY MULTIPLE PROPERTIES
x = -pi:pi/10:pi; 
y = tan(sin(x)) - sin(tan(x));
C(:,1) = {'LineWidth'; 2};
C(:,2) = {'MarkerEdgeColor'; 'k'};
C(:,3) = {'MarkerFaceColor'; 'g'};
figure;
plot(x, y, '--rs', C{:}); % Pass the property/value pairs via cell array.