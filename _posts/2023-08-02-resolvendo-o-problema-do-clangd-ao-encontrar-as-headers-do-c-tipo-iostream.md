---
title: "Resolvendo o problema do clangd ao encontrar as headers do C++ tipo iostream"
date: 2023-08-02 05:20:24 -0300
layout: post
permalink: /2023/08/02/resolvendo-o-problema-do-clangd-ao-encontrar-as-headers-do-c-tipo-iostream/
---

**Resolvendo o problema do clangd ao encontrar as headers do C++ tipo iostream**

Se você já trabalhou com o clangd e encontrou o erro "file not found" ao incluir a biblioteca "iostream" no seu código C++, não se preocupe, há uma solução simples para isso!

O clangd é um excelente servidor de linguagem para C++ que oferece recursos como autocompletar código, análise de erros e navegação pelo código. No entanto, em alguns casos, pode ser que o clangd não esteja encontrando as bibliotecas padrão do C++, como a "iostream".

Uma das formas de resolver esse problema é exportar a variável de ambiente `CPLUS_INCLUDE_PATH`. Essa variável especifica os diretórios onde o clangd deve procurar as headers do C++. Aqui está como fazer isso:

1. Abra o terminal no seu sistema operacional.

2. Exporte a variável `CPLUS_INCLUDE_PATH` com os diretórios das bibliotecas do C++ que você deseja adicionar. Por exemplo, se você estiver usando a versão 11 do C++, pode usar os seguintes comandos:

```bash
export CPLUS_INCLUDE_PATH=/usr/include/c++/11:/usr/include/x86_64-linux-gnu/c++/11
```

Esses diretórios são geralmente os caminhos onde as bibliotecas do C++ estão instaladas no sistema.

3. Após definir a variável `CPLUS_INCLUDE_PATH`, inicie o clangd novamente ou reinicie sua IDE ou editor que está usando para o desenvolvimento C++.

Com isso, o clangd agora deve conseguir encontrar a biblioteca "iostream" e outras bibliotecas padrão do C++, permitindo que você trabalhe com mais facilidade em projetos C++ usando esse servidor de linguagem.

Lembre-se de ajustar os caminhos dos diretórios de acordo com a configuração do seu sistema e a versão do C++ que você está utilizando. Com essa simples solução, você estará pronto para aproveitar todos os recursos do clangd em seus projetos C++ de forma tranquila e eficiente!
