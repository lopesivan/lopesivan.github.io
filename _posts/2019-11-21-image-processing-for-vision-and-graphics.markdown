---
layout: impa
title:  "Estado da arte e tendências na era do  Aprendizado profundo"
date:   2019-11-21 17:15:23 -0300
categories: Paper Presentation
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

## Soluções

Soluções eficazes geralmente exigem várias imagens, capturando a
partir de câmeras calibradas com precisão. Baseando-se em
técnicas de estéreo, por exemplo, exigem recursos
correspondentes imagens capturadas de ângulos de visão
ligeiramente diferentes e use o princípio da triangulação para
recuperar a coordenação 3D dinates dos pixels da imagem.  Forma
a partir da silhueta ou forma pelo espaço-escultura, métodos [
2] requerem segmentação precisa Silhuetas 2D. Esses métodos, que
levaram a razões reconstruções 3D de qualidade aceitável, exigem
várias imagens de o mesmo objeto capturado por câmeras bem
calibradas. Este,no entanto, pode não ser prático ou viável em
muitas situações.


Curiosamente, os seres humanos são bons em resolver esses problemas problemas
inversos, aproveitando o conhecimento prévio. Eles podem inferir o tamanho
aproximado e a geometria aproximada dos objetos usando apenas um olho. Eles
podem até adivinhar o que seria parece de outro ponto de vista. Nós podemos
fazer isso porque todos os objetos e cenas vistos anteriormente nos
permitiram construir conhecimento prévio e desenvolver modelos mentais de como
são os objetos. A segunda geração de reconhecimento 3D métodos de construção
tentaram alavancar esse conhecimento prévio formular o problema de reconstrução
3D como reconhecimento problema. A avenida das técnicas de aprendizado profundo
e muito maisimportante, a crescente disponibilidade de grandes dados de
treinamento conjuntos, levaram a uma nova geração de métodos capazes
de recuperar a geometria 3D e a estrutura dos objetos de um ou múltiplas imagens
RGB sem a complexidade da câmera processo de separação. Apesar de recentes,
esses métodos têm demonstrou resultados emocionantes e promissores em
vários tarefas relacionadas à visão e gráficos de computador.

Neste artigo, fornecemos uma estrutura abrangente e revisão detalhada dos
recentes avanços na reconstrução usando técnicas de aprendizagem profunda.
Primeiro focamos formas genéricas e, em seguida, discutir casos específicos,
como o corpo humano molda a face da reconstrução e a cena 3D análise.
Reunimos 149 trabalhos, que apareceram desde 2015 na liderança em visão
computacional, computação gráfica,e conferências e periódicos de aprendizado
de máquina1. O objetivoé ajudar o leitor a navegar neste campo emergente,
que ganhou um impulso significativo nos últimos anos. Comparados à literatura
existente, as principais contribuições deste artigo é o seguinte;

1) Até onde sabemos, esta é a primeira pesquisa artigo na literatura que se
concentra na imagem reconstrução de objetos 3D baseada em aprendizagem
profunda.

2) Cobrimos a literatura contemporânea com respeito para esta área.
Apresentamos uma revisão abrangente de 149 métodos, que surgiram desde 2015.

3) Fornecemos uma análise abrangente e uma análise perspicaz de todos os
aspectos da reconstrução 3D usando aprendizado profundo, incluindo os dados de
treinamento, escolha das arquiteturas de rede e seus efeitos sobre os resultados
da reconstrução 3D, as estratégias de treinamento,e os cenários de
aplicativos.

4) Fornecemos um resumo comparativo das propriedades e desempenho
dos métodos revisados para reconstrução genérica de objetos 3D. Cobrimos
88 algoritmos para reconstrução genérica de objetos 3D, 11 métodos relacionados
à reconstrução da face 3D e 6 métodos para reconstrução 3D da forma do corpo
humano.

5) Fornecemos um resumo comparativo dos métodos de forma tabular.

O restante deste artigo está organizado da seguinte forma; Seção 2 fo-detalha
o problema e estabelece a taxonomia. Seção 3analisa os espaços latentes e os
mecanismos de codificação de entradanismos. A Seção 4 examina as técnicas de
reconstrução volumétricatécnicas, enquanto a Seção 5 se concentra em técnicas
de superfície.A seção 6 mostra como algumas das técnicas de pontause dicas
adicionais para aumentar o desempenho da recuperação 3Dconstrução. A seção 7
discute os procedimentos de treinamento.A seção 8 concentra-se em objetos
específicos, como o corpo humanoformas e rostos. Seção 9 resume as mais
comunsconjuntos de dados usados ​​para treinar, testar e avaliar o
desempenho devários algoritmos de reconstrução 3D baseados em aprendizado
profundo.A Seção 10 compara e discute o desempenho de algumasprincipais
métodos. Por fim, a Seção 11 discute o potencial futuroinstruções de pesquisa
enquanto a Seção 12 conclui o artigocom algumas observações importantes.






{% include image.html url="https://github.com/lopesivan/impa-2019-11-21/raw/master/1906.06543.pdf"
max-width="100px" file="imgs/pdf.png"
alt="Paper" caption="Image-based 3D Object Reconstruction: State-of-the-Art and Trends in the Deep Learning Era." %}

{% include image.html url="https://github.com/lopesivan/impa-2019-11-21/raw/master/slide.pdf"
max-width="100px" file="imgs/pdf.png"
alt="Slide" caption="Aprsentação" %}



{% include doc.html
before="Artigo usado na apresentação:"
file="docs/1906.06543.pdf"
name="Image-based 3D Object Reconstruction: State-of-the-Art and Trends in the Deep Learning Era." %}

{% include doc.html
before="Slide baseado no artigo proposto:"
file="docs/slide.pdf"
name="Reconstrução de objetos 3D baseados em imagem." %}


---

Ivan Jekyll also offers powerful support for code snippets:

Ivan Jekyll also offers powerful support for code snippets:

O código fonte da implementação estatística do problema das escadas
[classifica escadas em tons de cinza][classify_stairs_nnet_from_scratch.R]
conforme mostrado no [slide][main-slide] da apresentação.

{% highlight R %}
#=============================================================================
# settings

options(scipen = 20)

#--------------------------------------------------
# packages

library(data.table)
library(ggplot2)
library(stringr)

#=============================================================================
# Helper methods

sigmoid <- function(x){
  # sigmoid function

  1 / (1 + exp(-x))
}

softmax <- function(m, offset_trick = TRUE){
  # softmax

  if(offset_trick){
    rowmaxs <- apply(m, 1, max)
    result <- exp(m - rowmaxs)/rowSums(exp(m - rowmaxs))
  } else{
    result <- exp(m)/rowSums(exp(m))
  }

  return(result)
}

#=============================================================================
# Datasets

# Read train & test data
train <- fread("./Data/train.csv")
test <- fread("./Data/test.csv")

# Insert Label for plots
train[, Label := ifelse(IsStairs, "Stairs", "Not Stairs")]
train[, Label := factor(Label, levels=c("Not Stairs", "Stairs"))]
test[, Label := ifelse(IsStairs, "Stairs", "Not Stairs")]
test[, Label := factor(Label, levels=c("Not Stairs", "Stairs"))]

# Reshape from wide to tall
trainTall <- melt(
  train,
  id.vars = c("ImageId", "IsStairs", "Label"),
  measure.vars = c("R1C1", "R1C2", "R2C1", "R2C2"),
  value.name = "Intensity",
  variable.name = "Pixel"
)

testTall <- melt(
  test,
  id.vars = c("ImageId", "IsStairs", "Label"),
  measure.vars = c("R1C1", "R1C2", "R2C1", "R2C2"),
  value.name = "Intensity",
  variable.name = "Pixel"
)

trainTall[, `:=`(Row = as.integer(str_extract(Pixel, "(?<=R)\\d")), Col = as.integer(str_extract(Pixel, "(?<=C)\\d")))]
testTall[, `:=`(Row = as.integer(str_extract(Pixel, "(?<=R)\\d")), Col = as.integer(str_extract(Pixel, "(?<=C)\\d")))]

#=============================================================================
# Figures

#--------------------------------------------------
# fig1: stairs vs not stairs

fig1data <- trainTall[ImageId %in% train$ImageId[1:12]]
fig1 <- ggplot(fig1data, aes(x = Col, y = 2-Row, fill = Intensity))+geom_tile(color="white")+
  scale_fill_gradient(low = "white", high = "black", limits=c(0, 255), guide=FALSE)+
  theme_void()+labs(x="", y="")+
  facet_wrap(~ImageId, nrow = 2, labeller = labeller(ImageId = setNames(as.character(fig1data$Label), fig1data$ImageId)))

#--------------------------------------------------
# fig2: image with pixels labeled x1, x2, x3, x4

image1 <- trainTall[ImageId == 1]
image1[Row == 1 & Col == 1, PixelLabel := paste0("x1 = ", Intensity)]
image1[Row == 1 & Col == 2, PixelLabel := paste0("x2 = ", Intensity)]
image1[Row == 2 & Col == 1, PixelLabel := paste0("x3 = ", Intensity)]
image1[Row == 2 & Col == 2, PixelLabel := paste0("x4 = ", Intensity)]

fig2lables <- image1
fig2lables[, `:=`(x = Col+0.45, y = 1.55 - Row)]

fig2 <- ggplot(image1, aes(x = Col, y = 2-Row, fill = Intensity))+geom_tile(color="white")+
  geom_text(data = fig2lables, aes(x = x, y = y, label = PixelLabel), color = "goldenrod3", size = 5, hjust = 1, vjust = 0)+
  scale_fill_gradient(low = "white", high = "black", limits=c(0, 255), guide=FALSE)+
  theme_void()+labs(x="", y="")+
  labs(title = image1$Label[1])+
  theme(plot.title = element_text(hjust = 0.5, vjust = -50))

#=============================================================================
# NNet from scratch

# Build a nnet with and input layer, hidden layer, and output layer
# input layer: 1st node = 1 (for bias), nodes 2-4 correspond to features R1C1, R1C2, R2C1, R2C2
# hidden layer: 3 nodes. 1st node = 1 (for bias), nodes 2-3 correspond to incoming signals
# output layer: 2 nodes
# Optimize categorical cross entropy error
# Apply sigmoid activation to the hidden layer, softmax to the output layer

#--------------------------------------------------
# Set Y, X1, stepsize

Y <- cbind(Stairs = 1 * train$IsStairs, NotStairs = 1 * !train$IsStairs)
X1 <- as.matrix(train[, list(R1C1, R1C2, R2C1, R2C2)])

# Prepend X1 with column of 1s for bias terms
X1 <- cbind(b = 1, X1)  # Include column of all 1s

# Set setpsize
stepsize = 0.1

#--------------------------------------------------
# Weight initialization

set.seed(1)
W1 <- matrix(runif(min = -0.01, max = 0.01, n = 5*2), nrow=5)
W2 <- matrix(runif(min = -0.01, max = 0.01, n = 3*2), nrow=3)

#--------------------------------------------------
# Forward Pass (first iteration)

Z1 <- X1 %*% W1
X2 <- cbind(b = 1, sigmoid(Z1))
Z2 <- X2 %*% W2
Yhat <- softmax(Z2)

# Calculate Categorical Cross Entropy Error
loss <- mean(-rowSums(Y * log(Yhat)))

# Measure loss and classification accuracy
predicted_class <- apply(Yhat, MARGIN = 1, FUN = which.max)
true_class <- apply(Y, MARGIN = 1, FUN = which.max)
accuracy <- mean(predicted_class == true_class)
print(paste("Loss:", loss, "| accuracy:", accuracy))

#--------------------------------------------------
# Backprop (first iteration)

# Backprop
delta1 <- Yhat - Y  # Partial CE/Partial Z2
delta2 <- delta1 %*% t(W2)  # Partial CE/Partial X2
delta3 <- delta2[, -1] * (X2[, -1] * (1 - X2[, -1]))  # Partial CE/Partial Z1

# Gradients
gradW2 <- t(X2) %*% delta1 / nrow(X1)
gradW1 <- t(X1) %*% delta3 / nrow(X1)

# Weight updates
W1 <- W1 - gradW1 * stepsize
W2 <- W2 - gradW2 * stepsize

# Measure loss and classification accuracy
predicted_class <- apply(Yhat, MARGIN = 1, FUN = which.max)
true_class <- apply(Y, MARGIN = 1, FUN = which.max)
accuracy <- mean(predicted_class == true_class)
print(paste("Loss:", loss, "| accuracy on training data:", accuracy))

#--------------------------------------------------
# Repeat

epochs <- 1500
for(epoch in 2:epochs){

  # Forward Pass
  Z1 <- X1 %*% W1
  X2 <- cbind(b = 1, sigmoid(Z1))
  Z2 <- X2 %*% W2
  Yhat <- softmax(Z2)

  # Calculate Categorical Cross Entropy Error
  loss <- mean(-rowSums(Y * log(Yhat)))

  # Backprop
  delta1 <- Yhat - Y  # Partial CE/Partial Z2
  delta2 <- delta1 %*% t(W2[-1, ])  # Partial CE/Partial X2[, -1]
  delta3 <- delta2 * (X2[, -1] * (1 - X2[, -1]))  # Partial CE/Partial Z1

  # Gradients
  gradW2 <- t(X2) %*% delta1 / 400
  gradW1 <- t(X1) %*% delta3 / 400

  # Weight updates
  W1 <- W1 - gradW1 * stepsize
  W2 <- W2 - gradW2 * stepsize

  # Print the loss and accuracy
  if((epoch - 2) %% 100 == 0){
    predicted_class <- apply(Yhat, MARGIN = 1, FUN = which.max)
    true_class <- apply(Y, MARGIN = 1, FUN = which.max)
    accuracy <- mean(predicted_class == true_class)

    print(paste("Epoch:", epoch, "Loss:", loss, "| accuracy on training data:", accuracy))
  }
}

#--------------------------------------------------
# Make predictions on the test data

Y_test <- cbind(Stairs = 1 * test$IsStairs, NotStairs = 1 * !test$IsStairs)
X1_test <- as.matrix(test[, list(R1C1, R1C2, R2C1, R2C2)])

# Prepend X1 with column of 1s for bias terms
X1_test <- cbind(b = 1, X1_test)  # Include column of all 1s

# Forward pass
Z1_test <- X1_test %*% W1
X2_test <- cbind(b = 1, sigmoid(Z1_test))
Z2_test <- X2_test %*% W2
Yhat_test <- softmax(Z2_test)

# Check results
predicted_class <- apply(Yhat_test, MARGIN = 1, FUN = which.max)
true_class <- apply(Y_test, MARGIN = 1, FUN = which.max)
accuracy <- mean(predicted_class == true_class)
print(paste("accuracy on test data:", accuracy))  # 0.87

##################################################################################################################################
# Check results using keras

library(keras)

Y <- cbind(Stairs = 1 * train$IsStairs, NotStairs = 1 * !train$IsStairs)
X1 <- as.matrix(train[, list(R1C1, R1C2, R2C1, R2C2)])

set.seed(1)
W1 <- matrix(runif(min = -0.01, max = 0.01, n = 5*2), nrow=5)
W2 <- matrix(runif(min = -0.01, max = 0.01, n = 3*2), nrow=3)

model <- keras_model_sequential()
model <- layer_dense(
  object = model,
  input_shape = 4L,
  use_bias = TRUE,
  units = 2L,
  activation = 'sigmoid',
  weights = list(W1[2:5,], array(W1[1,]))
)
model <- layer_dense(
  object = model,
  input_shape = 2L,
  use_bias = TRUE,
  units = 2L,
  activation = 'softmax',
  weights = list(W2[2:3,], as.array(W2[1,]))
)
model <- compile(
  object = model,
  loss = 'categorical_crossentropy',
  optimizer = optimizer_sgd(lr=0.1),
  metrics = c('accuracy')
)

# Check the weights
get_weights(model)

# [[1]]
# [,1]         [,2]
# [1,] -0.002557522  0.008893506
# [2,]  0.001457067  0.003215956
# [3,]  0.008164156  0.002582281
# [4,] -0.005966362 -0.008764274
#
# [[2]]
# [1] -0.004689827  0.007967793
#
# [[3]]
# [,1]           [,2]
# [1,] -0.006468865  0.00539682852
# [2,]  0.003740457 -0.00004601516
#
# [[4]]
# [1] -0.005880509 -0.002317926

# Check the first few predictions from the initial nnet before training
head(predict_on_batch(object = model, x = X1))
#           [,1]      [,2]
# [1,] 0.4986581 0.5013419
# [2,] 0.4982750 0.5017250
# [3,] 0.4974762 0.5025238
# [4,] 0.4982801 0.5017199
# [5,] 0.4977485 0.5022514
# [6,] 0.4986086 0.5013914

# Evaluate initial model (our model has loss = 0.6934985)
evaluate(object = model, x = X1, y = Y, batch_size = 400)  # 0.6934986

# Run one iteration of gradient descent
train_on_batch(object = model, x = X1, y = Y)

# Check the weights again
get_weights(model)

# [[1]]
#              [,1]          [,2]
# [1,] -0.002025512  0.0087154731
# [2,]  0.002760389  0.0032557009
# [3,]  0.003623125  0.0003690708
# [4,] -0.010618099 -0.0107602663
#
# [[2]]
# [1] -0.004693955  0.007963512
#
# [[3]]
#                [,1]        [,2]
# [1,] -0.00490462780 0.003832591
# [2,]  0.00003715511 0.003657288
#
# [[4]]
# [1] -0.004931618 -0.003266816
{% endhighlight %}

Check out the [Slide][main-slide] for more info on how to get the most out of Jekyll. File all bugs/feature requests at [Jekyll’s GitHub repo][jekyll-gh]. If you have questions, you can ask them on [Jekyll Talk][jekyll-talk].

[classify_stairs_nnet_from_scratch.R]: https://raw.githubusercontent.com/lopesivan/impa-2019-11-21/master/code/classify_stairs_nnet_from_scratch.R
[main-paper]: https://github.com/lopesivan/impa-2019-11-21/raw/master/1906.06543.pdf
[main-slide]: https://github.com/lopesivan/impa-2019-11-21/raw/master/slide.pdf
[jekyll-docs]: http://jekyllrb.com/docs/home
[jekyll-docs]: http://jekyllrb.com/docs/home
[jekyll-gh]:   https://github.com/jekyll/jekyll
[jekyll-talk]: https://talk.jekyllrb.com/

<!--
vim: set ts=4 sw=4 tw=64 ft=markdown:
-->
