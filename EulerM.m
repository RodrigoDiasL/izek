% EULER_M
% EULERM  Método de Euler Modificado para ED/PVI
%   yEulerM = EulerM(f,a,b,n,y0) Método numérico para a resolução de um PVI
%   y(i+1)=y(i)+h/2*(k1+k2)
%   y'= f(t,y) com t=[a, b] e y(a)=y0 condição inicial  

%10/04/2024
% Rodrigo Dias Luís - a2023112288@isec.pt
% Fábio Matias Neto - a2022134114@isec.pt
% Serhiy Hurlebaus  - a2023136318@isec.pt


function yEulerM=EulerM(f,a,b,n,y0)

h = (b-a)/n;                % Tamanho de cada subintervalo (passo)
yEulerM=zeros(1,n+1);       % Alocação de memória - vetor das ordenadas
t=a:h:b;                    % Alocação de memória - vetor das abcissas  
yEulerM(1) = y0;            % O primeiro valor de y é sempre y0

    for i=1:n                        
        k1 = f(t(i),yEulerM(i));           
        k2 = f(t(i+1), yEulerM(i) + k1*h); 
        
        yEulerM(i+1)=yEulerM(i)+h/2*(k1+k2);  
                                              
    
 
    end
 
end



