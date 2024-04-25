% RK2
% RK2  Método de Runge-Kutta de 2ªordem para ED/PVI
%   y(i+1)=y(i)+1/2*(k1+k2),i=0,1....,n-1
%   y'= f(t,y) com t=[a, b] e y(a)=y0 condição inicial 

%10/04/2024
% Rodrigo Dias Luís - a2023112288@isec.pt
% Fábio Matias Neto - a2022134114@isec.pt
% Serhiy Hurlebaus  - a2023136318@isec.pt


function yRK2=RK2(f,a,b,n,y0)

h = (b-a)/n;                  % Tamanho de cada subintervalo (passo)
yRK2=zeros(1,n+1);            % Alocação de memória - vetor das ordenadas
t=a:h:b;                      % Alocação de memória - vetor das abcissas
yRK2(1) = y0;                 % O primeiro valor de y é sempre y0

    for i = 1:n                   
    
    k1 = h*f(t(i), yRK2(i));            
    k2 = h*f(t(i+1), yRK2(i) + k1);     
    
    yRK2(i+1) = yRK2(i) + 1/2*(k1 + k2);    
                                            
    
    end

end



