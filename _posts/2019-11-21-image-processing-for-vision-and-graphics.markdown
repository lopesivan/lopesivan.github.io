---
layout: impa
title:  "Estado da arte e tendências na era do  Aprendizado profundo"
date:   2019-11-21 17:15:23 -0300
categories: Paper Presentation
---

{% include doc.html
before="Artigo usado na apresentação:"
file="docs/1906.06543.pdf"
name="Image-based 3D Object Reconstruction: State-of-the-Art and Trends in the Deep Learning Era." %}

{% include doc.html
before="Slide baseado no artigo proposto:"
file="docs/slide.pdf"
name="Reconstrução de objetos 3D baseados em imagem." %}

---

## Abstract

A reconstrução 3D é um problema antigo e mal colocado, que tem
sido explorado há décadas pela visão computacional, computação
gráfica e comunidades de aprendizado de máquina. Desde 2015, a
reconstrução 3D com base em imagem usando sistemas neurais
convolucionaisredes (CNN) atraiu um interesse crescente e
demonstrou um desempenho impressionante. Dada esta nova era de
rápida evolução, este artigo fornece uma pesquisa abrangente dos
desenvolvimentos recentes nesse campo. Focando nos trabalhos que
usam aprendizado profundo e técnicas para estimar a forma 3D de
objetos genéricos a partir de uma única ou várias imagens RGB.

Organizamos a literatura com base nas representações de forma,
nas arquiteturas de rede e nos mecanismos de treinamento que que
são usados. Embora esta pesquisa se destine a métodos que
reconstroem objetos genéricos, também é revisado alguns dos
trabalhos recentes que se concentram em classes de objetos
específicas, como formas e rostos humanos. É fornecido uma
análise e comparação do desempenho de alguns documentos
principais, resumindo-se alguns dos problemas em aberto nesse
campo e propondo direções promissoras para pesquisas futuras.


{% include image.html
   url="/paper/presentation/2019/11/21/imgs/3d_bounding_box_estimation_using_deep_learning_and_geometry.png"
   max-width="80%"
   file="imgs/3d_bounding_box_estimation_using_deep_learning_and_geometry.png"
   alt="3d_bounding_box_estimation_using_deep_learning_and_geometry.png"
   caption="Estimativa de caixas delimitadoras 3D usando aprendizado profundo e geometria"
%}


## INTRODUÇÃO

O objetivo da reconstrução 3D baseada em imagem é inferir a
geometria e estrutura de objetos e cenas partindo de um ou
várias imagens 2D. Este problema de longa data que é mal
posicionado é fundamental para muitas aplicações, como navegação
por robô, reconhecimento de objetos e compreensão de cenas,
modelagem 3D e animação, controle industrial e diagnóstico
médico.

A recuperação da dimensão perdida a partir de apenas imagens 2D
foi o objetivo do estéreo multivista clássico e do formato
Métodos X, que foram extensivamente investigados por muitas
décadas.  A primeira geração de métodos abordava o problema da
perspectiva geométrica; eles focaram na compreensão e
formalização, matematicamente, do 3D ao processo de projeção 2D,
com o objetivo de elaborar soluções técnicas ou algorítmicas
para obtenção do mecanismo inverso.

## A evolução dos métodos de reconstrução 3D

Soluções eficazes geralmente exigem várias imagens, capturadas a
partir de câmeras calibradas com precisão. Baseando-se em
técnicas de estéreo, por exemplo, exigem como recursos
correspondentes imagens capturadas de ângulos de visão
ligeiramente diferentes e que se use o princípio da triangulação
para recuperar a coordenação 3D diante dos pixels da imagem.

Formam-se a partir da silhueta ou forma pelo espaço escultural,
métodos que requerem segmentação precisa das silhuetas 2D. Esses
métodos, que levaram a razões reconstruções 3D de qualidade
aceitável, exigem várias imagens de o mesmo objeto capturado por
câmeras bem calibradas. Este,no entanto, pode não ser prático ou
viável em muitas situações devido ao alto custo computacional.

Curiosamente, os seres humanos são bons em resolver esses
problemas problemas inversos, aproveitando-se  de algum conhecimento
prévio. Eles podem inferir o tamanho aproximado e a geometria
aproximada dos objetos usando apenas um olho. Eles podem até
adivinhar o que seria partindo de outro ponto de vista. Nós
podemos fazer isso porque todos os objetos e cenas vistos
anteriormente nos permitiram construir conhecimento prévio e
desenvolver modelos mentais de como são os objetos.

A segunda geração de métodos de construção 3D tentou
usar esse conhecimento prévio e reformular formular o problema de
reconstrução 3D com reconhecimento problema. O caminho das
técnicas de aprendizado profundo são muito mais importantes, pois
a crescente disponibilidade de grandes dados de treinamento em
conjunto, levar a uma nova geração de métodos capazes de
recuperar a geometria 3D e a estrutura dos objetos de um ou
múltiplas imagens RGB sem a complexidade da câmera e processo de
separação e filtragem. Apesar de recentes, esses métodos têm demonstrado
resultados emocionantes e promissores em várias tarefas
relacionadas à visão computacional e processamento de imagem.

{% include image.html
   url="/paper/presentation/2019/11/21/imgs/a-square-net-min.jpg"
   max-width="80%"
   file="imgs/a-square-net-min.jpg"
   alt="a-square-net-min.jpg"
   caption="Modelo avançado de predição de forma com múltiplas redes"
%}


## Comparação de métodos de construção

{% include image.html
   url="/paper/presentation/2019/11/21/imgs/Core55.png"
   max-width="100%"
   file="imgs/Core55.png"
   alt="Core55.png"
   caption="Estimativa e raqueamento de métodos de reconstrução 3D por modelo de rede"
%}


## Bibliografia

Uma vasta [bibliografia][referencias] foi utilizada para
realização deste trabalho e assim sendo é necessário fazer duas
menções honrosas, sendo a primeira destinada ao pesquisador
[Luiz Velho][lvelho] cujo profissionalismo e trabalho inspiram a
todos que iforam seus alunos ou leitores de seus seus livros e
textos, e a segunda menção é ao Lucuino da Fontoura Costa que no
trabalho *Gauss' law in image processing and analysis via fast
numerical calculation of vector fields* publicado em 1999
aprensentou estudos deterministicos de cálculo de campos
vetorias e predição de formas.


## Materiais adicionais

Abaixo, mais alguns links para download dos arquivos em formato
pdf da apresentação e do paper discutido.

{% include image.html url="https://github.com/lopesivan/impa-2019-11-21/raw/master/1906.06543.pdf"
max-width="100px" file="imgs/pdf.png"
alt="Paper" caption="Image-based 3D Object Reconstruction: State-of-the-Art and Trends in the Deep Learning Era." %}

{% include image.html url="https://github.com/lopesivan/impa-2019-11-21/raw/master/slide.pdf"
max-width="100px" file="imgs/pdf.png"
alt="Slide" caption="Apresentação" %}

O código fonte da implementação estatística do problema das [classificação das escadas em tons de cinza][classify_stairs_nnet_from_scratch.R]
conforme mostrado no [slide][main-slide] da apresentação.

[classify_stairs_nnet_from_scratch.R]: https://raw.githubusercontent.com/lopesivan/impa-2019-11-21/master/code/classify_stairs_nnet_from_scratch.R
[main-paper]: https://github.com/lopesivan/impa-2019-11-21/raw/master/1906.06543.pdf
[main-slide]: https://github.com/lopesivan/impa-2019-11-21/raw/master/slide.pdf
[referencias]: https://raw.githubusercontent.com/lopesivan/impa-2019-11-21/master/referencias.bib
[lvelho]: http://lvelho.impa.br

<!--
vim: set ts=4 sw=4 tw=64 ft=markdown:
-->
