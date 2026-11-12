# Henrique Diniz · Portfólio

Portfólio que vira jogo de plataforma em pixel art. Em vez de rolar a página, você controla um personagem que desce pelo site: os cards viram plataformas, dá pra cabecear os cards (ou mergulhar neles) para soltar moedas, derrubar bugs, coletar as skills e pegar troféus. No fim aparecem o tempo, a pontuação e quanto do portfólio foi explorado.

**No ar:** https://henrique-diniz-portfolio.vercel.app

## Controles

| Tecla | Ação |
| --- | --- |
| `←` `→` | anda |
| `espaço` | pula (2× no ar) |
| `↓` | desce do card · no ar: mergulho |
| `enter` | começa o jogo |
| `esc` | sai do jogo |

No celular aparecem botões na tela. Quem só quer ler é só não apertar "Jogar".

## Como funciona

- HTML, CSS e JavaScript puro, sem dependências.
- O jogo roda num `<canvas>` por cima da própria página; as plataformas são lidas da posição real dos cards no DOM.
- A qualidade gráfica cai sozinha quando o aparelho não aguenta 60 fps.
- Todo o conteúdo fica no objeto `CONFIG` no topo do script em `portfolio.html`.

## Estrutura

- `portfolio.html`: o portfólio (conteúdo, estilos e jogo).
- `build.sh`: gera `site/index.html`, a página completa que a Vercel publica.

```bash
./build.sh
```
