%PONTO MÉDIO
%Método Ponto Médio para ED/PVI
%   yPontoMedio = PontoMedio(f,a,b,n,y0) Método numérico para a resolução de um PVI
%   y(i+1) = y(i) + h*f(t(i) + h/2, y(i) + h*k1),,i=0,1....,n-1 
%   k1 = 0.5 * f(t(i), y(i));    
%   y'= f(t,y) com t=[a, b] e y(a)=y0 condição inicial  
%
%INPUT:
%   f - função da equação diferencial, em t e y
%   [a, b] - extremos do intervalo da variável independente t
%   n - número de subintervalos ou iterações do método
%   y0 - condição inicial
%
%OUTPUT: 
%   y - vetor das soluções aproximadas
%   yPontoMedio(i+1) = yPontoMedio(i) + h*f(t(i) + h/2, yPM(i) + h*k1)
%   i =0,1,...,n-1

%10/04/2024
% Rodrigo Dias Luís - a2023112288@isec.pt
% Fábio Matias Neto - a2022134114@isec.pt
% Serhiy Hurlebaus  - a2023136318@isec.pt


function yPontoMedio = PontoMedio(f,a,b,n,y0)

h = (b-a)/n;                          % Tamanho de cada subintervalo (passo)
yPontoMedio=zeros(1,n+1);             % Alocação de memória - vetor das ordenadas
t=a:h:b;                              % Alocação de memória - vetor das abcissas
yPontoMedio(1) = y0;                  % O primeiro valor de y é sempre y0

    for i=1:n

     k1 = 0.5 * f(t(i), yPontoMedio(i));        
     yPontoMedio(i+1) = yPontoMedio(i) + h*f(t(i) + h/2, yPontoMedio(i) + h*k1);     

    end
end