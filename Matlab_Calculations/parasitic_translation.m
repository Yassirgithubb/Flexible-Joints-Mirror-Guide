% === Translation parasite sur le substrat ===
function parasitic_translation()
    digitsOld = digits(10); 
    x = linspace(0.000000001, 1.5, 30)*vpa(pi)/180; 
    y = linspace(-0.000000001, -1.5, 30)*vpa(pi)/180; 

    err = 5; % [um] EDM error
    L = 4000 + err; % [um] col width
    [p1, p2] = col_rond(x); 

    parasite_x = p1*L; 
    parasite_y = p2*L; 

    translation_x_pos = (1- (x.^2)/2).*2.*parasite_x*double(sqrt(2))./(1+x); 
    translation_x_neg = (1- (y.^2)/2).*2.*parasite_x*double(sqrt(2))./(1-y); 

    epsilon = err/2; 
    p_edm_neg = (epsilon.*y.*double(sqrt(2)))./(1-y); 
    p_edm_pos = (epsilon.*x.*double(sqrt(2)))./(1+x); 

    p_tot_pos = (translation_x_pos) + (p_edm_pos); 
    p_tot_neg = translation_x_neg + p_edm_neg; 

    plot(x, p_tot_pos, y, p_tot_neg) 
    xlabel('\theta_m [rad]') 
    ylabel('p_{tot} [\mum]') 
    title('Translation parasite sur substrat') 
    grid on 
    xlim([-0.026 0.026]) 
    fprintf("p_tot_max = %f [um]\n", max(p_tot_pos)); 
end