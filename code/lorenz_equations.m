function dy = lorenz_equations( y, sigma, rho, beta )
%LORENZ_EQUATIONS is a set of equations that describe the Lorenz dynamic.
dy = zeros(3,1);
dy(1) =  sigma*(y(2) - y(1));
dy(2) = y(1)*(rho - y(3)) - y(2);
dy(3) = y(1)*y(2) - beta*y(3);
end

