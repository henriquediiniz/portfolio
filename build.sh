#!/usr/bin/env bash
# Gera site/index.html (página completa para a Vercel) a partir de portfolio.html
set -e
cd "$(dirname "$0")"
mkdir -p site
{
  printf '<!doctype html>\n<html lang="pt-BR">\n<head>\n<meta charset="utf-8">\n<meta name="viewport" content="width=device-width, initial-scale=1, viewport-fit=cover">\n<meta name="description" content="Henrique Diniz, Full Stack Developer e Engenheiro de Software em Patos, PB. Portfólio que vira jogo de plataforma.">\n<style>:root{padding-top:env(safe-area-inset-top,0px);padding-bottom:env(safe-area-inset-bottom,0px)}body{margin:0}img{max-width:100%%}[hidden]{display:none!important}</style>\n'
  sed -n '1,/<\/style>/p' portfolio.html | grep -v 'claude:viewport'
  printf '</head>\n<body>\n'
  sed -n '/<\/style>/,$p' portfolio.html | sed '1d'
  printf '</body>\n</html>\n'
} > site/index.html
