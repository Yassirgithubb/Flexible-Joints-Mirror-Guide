% === Fonctions utilitaires ===
function [m, I] = parallelepiped(rho, l, w, b, d)
    V = l*w*b; 
    m = rho*V; 
    I0 = m/12*(l^2 + w^2); 
    I = I0 + m*norm(d)^2;
end

function [density, E, G, sigma_adm] = alu()
    density = 2810; 
    E = 72e9; 
    G = 27e9; 
    sigma_D_10_7 = 110e6; 
    sigma_adm = sigma_D_10_7/2; 
end

function [density, E, G, sigma_adm] = steel_maraging_w720()
    density = 7600; 
    E = 193e9; 
    G = 72e9; 
    sigma_D_10_7 = 735e6; 
    sigma_adm = sigma_D_10_7/2; 
end