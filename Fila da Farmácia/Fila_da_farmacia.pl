% Autor: Paulo Jos� Carmona Teixeira
% Data: 20/03/2018
%https://rachacuca.com.br/logica/problemas/fila-da-farmacia/

resolve(S):-
           S = fila(mulher(_,_,_,_,_,_),
                    mulher(_,_,_,_,_,_),
                    mulher(_,_,_,_,_,_),
                    mulher(_,_,_,_,_,_),
                    mulher(_,_,_,_,_,_)),

%Thais est� exatamente � direita da mulher de 25 anos.
               exat_a_direita(A,B,S),
               nome(A,thais),
               idade(B,vinte_e_cinco),

%Paula est� na primeira posi��o.
               primeira_da_fila(C,S),
               nome(C,paula),

%A de Branco est� ao lado da mulher que tem Franja.
               ao_lado(D,E,S),
               camiseta(D,branca),
               cabelo(E,franja),

%A mulher de Vermelho tem cabelo Chanel.
               pessoa(F,S),
               camiseta(F,vermelha),
               cabelo(F,chanel),

%A garota de Rabo de Cavalo est� exatamente � direita da que usa Franja.
               cabelo(G,rabo_de_cavalo),
               cabelo(H,franja),
               exat_a_direita(G,H,S),

%A aquariana est� exatamente � esquerda da mulher de 26 anos.
               signo(I,aquariana),
               idade(J,vinte_e_seis),
               exat_a_esquerda(I,J,S),

%A mais nova est� em algum lugar entre a de 27 anos e a de 25 anos, nessa ordem.
               entre(K,L,M,S),
               idade(K,vinte_e_quatro),
               idade(L,vinte_e_sete),
               idade(M,vinte_e_cinco),

%A mulher de 25 anos foi � farm�cia para comprar Desodorante.
               pessoa(N,S),
               idade(N,vinte_e_cinco),
               produto(N,desodorante),

%A mulher mais velha est� exatamente � esquerda da capricorniana
               exat_a_esquerda(O,P,S),
               signo(P,capricorniana),
               idade(O,vinte_e_oito),

%A garota de Capric�rnio est� ao lado da de Peixes.
               ao_lado(Q,R,S),
               signo(Q,capricorniana),
               signo(R,pisciana),

%A mulher de Peixes est� ao lado da que foi comprar Desodorante.
               ao_lado(E58,T,S),
               signo(E58,pisciana),
               produto(T,desodorante),

%A mulher que nasceu em outubro est� na quinta posi��o.
               quinta_da_fila(U,S),
               signo(U,escorpiao),

%A mulher de Azul est� em algum lugar � esquerda da que foi comprar Hidratante.
               a_esquerda(V,X85,S),
               camiseta(V,azul),
               produto(X85,hidratante),

%A garota de Amarelo est� em algum lugar � esquerda da que foi comprar Rem�dio.
               a_esquerda(Z,W,S),
               camiseta(Z,amarela),
               produto(W,remedio),

%Na terceira posi��o est� quem precisa de Rem�dio.
               terceira_da_fila(Y85,S),
               produto(Y85,remedio),

%A mulher que foi comprar Desodorante est� em algum lugar � direita da que est� de Amarelo.
               a_direita(A1,B1,S),
               produto(A1,desodorante),
               camiseta(B1,amarela),

%A de Amarelo est� em algum lugar entre a que precisa de Xampu e a Gabriela, nessa ordem.
               entre(C1,D1,E1,S),
               camiseta(C1,amarela),
               produto(D1,xampu),
               nome(E1,gabriela),

%Alessandra tem 25 anos.
               pessoa(F1,S),
               nome(F1,alessandra),
               idade(F1,vinte_e_cinco),

%A capricorniana e a Gabriela est�o lado a lado.
               lado_a_lado(G1,H1,S),
               signo(G1,capricorniana),
               nome(H1,gabriela),

%A mulher do signo de Capric�rnio est� exatamente � esquerda da que usa Rabo de Cavalo.
               exat_a_esquerda(I1,J1,S),
               signo(I1,capricorniana),
               cabelo(J1,rabo_de_cavalo),

%Quem tem o cabelo Desfiado est� exatamente � direita da que est� de Azul.
               exat_a_direita(K1,L1,S),
               cabelo(K1,desfiado),
               camiseta(L1,azul),

%Na quinta posi��o est� a mulher de Chanel.
               quinta_da_fila(M1,S),
               cabelo(M1,chanel),

%Restri�oes de Fechamento
               pessoa(N1,S),
               nome(N1,fernanda),

               pessoa(O1,S),
               camiseta(O1,verde),

               pessoa(P1,S),
               produto(P1,fralda),

               pessoa(R1,S),
               signo(R1,touro),

               pessoa(U1,S),
               cabelo(U1,curto).


pessoa(X,fila(X,_,_,_,_)).
pessoa(X,fila(_,X,_,_,_)).
pessoa(X,fila(_,_,X,_,_)).
pessoa(X,fila(_,_,_,X,_)).
pessoa(X,fila(_,_,_,_,X)).

camiseta(mulher(Ca,_,_,_,_,_),Ca).
    nome(mulher(_,No,_,_,_,_),No).
 produto(mulher(_,_,Po,_,_,_),Po).
   signo(mulher(_,_,_,Si,_,_),Si).
   idade(mulher(_,_,_,_,Id,_),Id).
  cabelo(mulher(_,_,_,_,_,Cb),Cb).

primeira_da_fila(X,fila(X,_,_,_,_)).
terceira_da_fila(X,fila(_,_,X,_,_)).
  quinta_da_fila(X,fila(_,_,_,_,X)).

exat_a_direita(X,Y,fila(Y,X,_,_,_)).
exat_a_direita(X,Y,fila(_,Y,X,_,_)).
exat_a_direita(X,Y,fila(_,_,Y,X,_)).
exat_a_direita(X,Y,fila(_,_,_,Y,X)).

exat_a_esquerda(X,Y,fila(X,Y,_,_,_)).
exat_a_esquerda(X,Y,fila(_,X,Y,_,_)).
exat_a_esquerda(X,Y,fila(_,_,X,Y,_)).
exat_a_esquerda(X,Y,fila(_,_,_,X,Y)).

entre(X,Y,Z,fila(Y,X,Z,_,_)).
entre(X,Y,Z,fila(Y,X,_,Z,_)).
entre(X,Y,Z,fila(Y,X,_,_,Z)).
entre(X,Y,Z,fila(Y,_,X,Z,_)).
entre(X,Y,Z,fila(Y,_,X,_,Z)).
entre(X,Y,Z,fila(Y,_,_,X,Z)).
entre(X,Y,Z,fila(_,Y,X,Z,_)).
entre(X,Y,Z,fila(_,Y,X,_,Z)).
entre(X,Y,Z,fila(_,Y,_,X,Z)).
entre(X,Y,Z,fila(_,_,Y,X,Z)).

ao_lado(X,Y,fila(Y,X,_,_,_)).
ao_lado(X,Y,fila(X,Y,_,_,_)).
ao_lado(X,Y,fila(_,Y,X,_,_)).
ao_lado(X,Y,fila(_,X,Y,_,_)).
ao_lado(X,Y,fila(_,_,Y,X,_)).
ao_lado(X,Y,fila(_,_,X,Y,_)).
ao_lado(X,Y,fila(_,_,_,Y,X)).
ao_lado(X,Y,fila(_,_,_,X,Y)).

lado_a_lado(X,Y,fila(Y,X,_,_,_)).
lado_a_lado(X,Y,fila(X,Y,_,_,_)).
lado_a_lado(X,Y,fila(_,Y,X,_,_)).
lado_a_lado(X,Y,fila(_,X,Y,_,_)).
lado_a_lado(X,Y,fila(_,_,Y,X,_)).
lado_a_lado(X,Y,fila(_,_,X,Y,_)).
lado_a_lado(X,Y,fila(_,_,_,Y,X)).
lado_a_lado(X,Y,fila(_,_,_,X,Y)).

a_esquerda(X,Y,fila(X,Y,_,_,_)).
a_esquerda(X,Y,fila(X,_,Y,_,_)).
a_esquerda(X,Y,fila(X,_,_,Y,_)).
a_esquerda(X,Y,fila(X,_,_,_,Y)).
a_esquerda(X,Y,fila(_,X,Y,_,_)).
a_esquerda(X,Y,fila(_,X,_,Y,_)).
a_esquerda(X,Y,fila(_,X,_,_,Y)).
a_esquerda(X,Y,fila(_,_,X,Y,_)).
a_esquerda(X,Y,fila(_,_,X,_,Y)).
a_esquerda(X,Y,fila(_,_,_,X,Y)).

a_direita(X,Y,fila(Y,X,_,_,_)).
a_direita(X,Y,fila(Y,_,X,_,_)).
a_direita(X,Y,fila(Y,_,_,X,_)).
a_direita(X,Y,fila(Y,_,_,_,X)).
a_direita(X,Y,fila(_,Y,X,_,_)).
a_direita(X,Y,fila(_,Y,_,X,_)).
a_direita(X,Y,fila(_,Y,_,_,X)).
a_direita(X,Y,fila(_,_,Y,X,_)).
a_direita(X,Y,fila(_,_,Y,_,X)).
a_direita(X,Y,fila(_,_,_,Y,X)).





















