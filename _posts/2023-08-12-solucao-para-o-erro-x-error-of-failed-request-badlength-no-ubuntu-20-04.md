---
title: "Solução para o erro X Error of failed request: BadLength no Ubuntu 20.04"
date: 2023-08-12 07:17:19 -0300
layout: post
author: Ivan Lopes
permalink: /2023/08/12/solucao-para-o-erro-x-error-of-failed-request-badlength-no-ubuntu-20-04/
---


# Solução para o erro X Error of failed request: BadLength no Ubuntu 20.04

Se você está enfrentando o erro "X Error of failed request: BadLength" no Ubuntu 20.04, pode seguir os passos abaixo para tentar resolver o problema. Este erro geralmente está relacionado a problemas com a biblioteca libXft, então a solução envolve recompilar e atualizar essa biblioteca.

## Passo 1: Baixar e Compilar a Biblioteca libXft

1. Abra um terminal.

2. Execute os seguintes comandos para baixar, compilar e instalar a biblioteca libXft:

```bash
wget https://xorg.freedesktop.org/releases/individual/lib/libXft-2.3.8.tar.xz
tar -xf libXft-2.3.8.tar.xz
cd libXft-2.3.8/
./configure
make
sudo make install
```

## Passo 2: Atualizar os Links da Biblioteca libXft

1. Após a instalação, execute os seguintes comandos para atualizar os links da biblioteca libXft:

```bash
cd /usr/local/lib
ls libXft.so

ls -l /usr/lib/x86_64-linux-gnu/libXft.so.2
ls -l libXft.so

sudo rm /usr/lib/x86_64-linux-gnu/libXft.so.2
sudo ln -s $PWD/libXft.so.2.3.8 /usr/lib/x86_64-linux-gnu/libXft.so.2
```

## Passo 3: Verificar a Solução

1. Após concluir todos os passos acima, reinicie o sistema ou faça o logoff e logon novamente.

2. Tente executar o aplicativo que estava gerando o erro "X Error of failed request: BadLength" para verificar se o problema foi resolvido.

Essa solução envolve a atualização da biblioteca libXft para uma versão mais recente, que pode corrigir possíveis problemas de compatibilidade ou bugs que estejam causando o erro. Lembre-se de que manipular bibliotecas do sistema pode ter implicações de compatibilidade e estabilidade, portanto, execute esses passos com cuidado.

> Nota: Sempre que você estiver realizando mudanças no sistema, é uma boa prática fazer um backup ou ter um ponto de restauração para evitar problemas caso algo dê errado.

Esperamos que essa solução resolva o erro "X Error of failed request: BadLength" no seu sistema Ubuntu 20.04. Se o problema persistir ou se você tiver outras dúvidas, não hesite em buscar assistência em fóruns de suporte ou comunidades Linux.
