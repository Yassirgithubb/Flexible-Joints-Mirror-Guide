% === Bloc YZ ===
function bloc_YZ()
    l_table = 12e-3;
    b = 4e-3;
    [m_col, I0_col, I_col_axe, d_axe_cdm_col] = col_m_I(rho_s, r, e, b);
    [m_poutre_table, I_poutre_table] = poutre_cols(rho_s, l_table, r, e, b);
    I1 = I_poutre_table;
    I2 = I_poutre_table + I0_col + m_col*norm([w/2+r-d_axe_cdm_col; r+w/2])^2;

    % Additional inertia and mass calculations
    % Define and calculate m3a, m3b, I3a, I3b, I3c, I3d, I3, m1, m2, m3

    % Define center of mass displacement functions
end