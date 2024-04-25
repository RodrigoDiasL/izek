% ODE45
% ODE45 Método numérico para a resolução de um PVI=Funcão do Matlab
%   yODE45 = ODE45(f,a,b,n,y0) Método numérico para a resolução de um PVI

%10/04/2024
% Rodrigo Dias Luís - a2023112288@isec.pt
% Fábio Matias Neto - a2022134114@isec.pt
% Serhiy Hurlebaus  - a2023136318@isec.pt


function yODE45=ODE45(f,a,b,n,y0)

h = (b-a)/n;                      % Tamanho de cada subintervalo (passo)
t=a:h:b;                          % Alocação de memória - vetor das abcissa
[~,yODE45] = ode45(f, t, y0);     % Aproximação através da função ODE45 e 
                                  % colocação dos valores no vetor y
yODE45 = yODE45';                 % Mudança da orientação do vetor

end



