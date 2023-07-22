---
title: "Mostrar a localização de um arquivo referenciado por um link simbólico"
date: 2023-07-22 02:15:07 -0300
layout: post
author: Ivan Lopes
permalink: /2023/07/22/mostrar-a-localizacao-de-um-arquivo-referenciado-por-um-link-simbolico/
---

Para mostrar a localização de um arquivo referenciado por um link simbólico no Linux, você pode usar o comando `readlink`. Esse comando retorna o nome do arquivo ao qual o link simbólico aponta. A sintaxe geral é a seguinte:

```
readlink -f <caminho_para_o_link_simbolico>
```

Onde:
- `-f`: opção que faz com que o `readlink` retorne o caminho absoluto do arquivo real (não o caminho relativo).
- `<caminho_para_o_link_simbolico>`: é o caminho para o link simbólico cuja localização você deseja conhecer.

Por exemplo, vamos supor que você tenha um link simbólico chamado "link_file" que aponta para o arquivo "target_file", ambos localizados no diretório "/home/usuario/meus_arquivos/". Para mostrar a localização do arquivo real referenciado pelo link simbólico, você usaria o seguinte comando:

```
readlink -f /home/usuario/meus_arquivos/link_file
```

O comando retornará o caminho absoluto do arquivo real "target_file".

Caso o link simbólico não exista ou aponte para um local inexistente, o comando retornará um erro informando que o link é inválido.
