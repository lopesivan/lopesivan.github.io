---
title: "listar os status dos arquivos no modo texto usando o Git"
date: 2023-11-28 02:02:07 -0300
layout: post
author: Ivan Lopes
permalink: /2023/11/28/listar-os-status-dos-arquivos-no-modo-texto-usando-o-git/
tags:
  - Git
  - awk
  - cut
  - bash
---

Se você deseja obter apenas os nomes dos arquivos que foram
alterados, adicionados, removidos, etc., sem informações
adicionais, você pode usar `git status` com as opções
`--porcelain` ou `--short` junto com comandos do shell para
extrair somente a parte relevante. Aqui está como você pode
fazer isso em um terminal Unix-like, como Bash no Linux ou
macOS:

```sh
git status --porcelain | awk '{print $2}'
```

Ou, se você quiser considerar espaços no nome dos arquivos, você
pode usar `cut`:

```sh
git status --porcelain | cut -c4-
```

Esses comandos irão listar apenas os caminhos dos arquivos que
foram alterados.
