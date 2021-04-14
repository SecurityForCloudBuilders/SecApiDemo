# SecApiDemo
Uma maneira beeem simples de demonstrar segurança ao utilizar APIs!

## Testar a aplicação

No Dockerfile, nos campos de:

    - TREND_AP_KEY=<KEY>
    - TREND_AP_SECRET=<TREND_AP_SECRET>

Mude para as Keys que são do seu grupo e encontram-se na console do Cloud One Application Security, em <a href="https://cloudone.trendmicro.com/docs/application-security/groups/"> Group Configuration </a>

Execute o script run-docker

Pronto, o Container com a Aplicação já está disponível para ser usado!

## Para testar os Módulos de Segurança

### Open Redirect

No Cloud One Application Security, configure a politica de Open Redirect, com a regra:

    - /*

(Opcional) Mas caso queira, pode mudar a regra para Mitigate e ver o comportamento da ferramenta ao fazer o bloqueio da Request.

E execute o seguinte comando:

    - curl --location --request GET 'localhost:8000/admin'

Veja que a requisição foi bloqueada. Caso queira, volte para a console do Application Security e veja os eventos do grupo.

### IP Protection

No Cloud One Application Security, configure a politica de IP Protection, com a regra:

    - 0.0.0.0/0
    - Ou com um IP que irá acessar essa aplicação;

(Opcional) Mas caso queira, pode mudar a regra para Mitigate e ver o comportamento da ferramenta ao fazer o bloqueio da Request.

E execute o seguinte comando:

    - curl --location --request GET 'localhost:8000/heros'

Veja que a requisição foi bloqueada. Caso queira, volte para a console do Application Security e veja os eventos do grupo.