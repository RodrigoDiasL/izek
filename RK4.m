% RK4
% RK4  Método de Runge-Kutta de 4ªordem para ED/PVI
% y(i+1) = y(i) + 1/6*(k1 + 2*k2 + 2*k3 + k4), i=0,1....,n-1
% y'= f(t,y) com t=[a, b] e y(a)=y0 condição inicial 

%10/04/2024
% Rodrigo Dias Luís - a2023112288@isec.pt
% Fábio Matias Neto - a2022134114@isec.pt
% Serhiy Hurlebaus  - a2023136318@isec.pt


function yRK4 = RK4(f,a,b,n,y0)

h = (b-a)/n;                   % Tamanho de cada subintervalo (passo)    
yRK4=zeros(1,n+1);             % Alocação de memória - vetor das ordenadas
t=a:h:b;                       % Alocação de memória - vetor das abcissas

yRK4(1) = y0;                  % O primeiro valor de y é sempre y0
    
    for i=1:n                  
        
        k1 = h*f(t(i), yRK4(i));   
        
        k2 = h*f(t(i)+h/2, yRK4(i)+k1/2);   
                                            
        k3 = h*f(t(i)+h/2, yRK4(i)+k2/2);   
                                            
        k4 = h*f(t(i)+h, yRK4(i)+k3);       
        
        yRK4(i+1) = yRK4(i) + 1/6*(k1 + 2*k2 + 2*k3 + k4);  
        
    end

end