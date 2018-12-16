%ordered derivatives with respect to wji
function [F_wji] = compute_F_wji(sigma_history,F_u)
temp = size(F_u);
Nneurons = temp(1);
T_time_steps=temp(2);
F_wji = zeros(Nneurons,Nneurons); %create holder for output with correct dimensions

%compute sum of F_uvals terms over time:
for t=2:T_time_steps
    F_wji_t = F_u(:,t) * sigma_history(:,t-1)';
    F_wji = F_wji + F_wji_t
end
