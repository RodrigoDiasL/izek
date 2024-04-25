% EULER
% EULER  Método de Euler para ED/PVI
%   y(i+1)=y(i)+h*f(t(i),y(i)),i=0,1....,n-1
%   y'= f(t,y) com t=[a, b] e y(a)=y0 condição inicial  

%10/04/2024
% Rodrigo Dias Luís - a2023112288@isec.pt
% Fábio Matias Neto - a2022134114@isec.pt
% Serhiy Hurlebaus  - a2023136318@isec.pt


function yEuler= Euler(f,a,b,n,y0)

h = (b-a)/n;                % Tamanho de cada subintervalo (passo)
yEuler=zeros(1,n+1);        % Alocação de memória - vetor das ordenadas
t=a:h:b;                    % Alocação de memória - vetor das abcissas
yEuler(1) = y0;             % O primeiro valor de y é sempre y0 

    for i=1:n                   
    
    yEuler(i+1)=yEuler(i)+h*f(t(i),yEuler(i)); 
                                               
    
    end

end



