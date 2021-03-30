# SecApiDemo
Uma maneira beeem simples de demonstrar segurança ao utilizar APIs!

## Para testar os Módulos de Segurança

### Open Redirect

No Cloud One Application Security, configure a politica de Open Redirect, com a regra:

    - /*

E execute o seguinte comando:

    - curl --location --request GET 'localhost:8000/admin'

Veja que a requisição foi bloqueada. Caso queira, volte para a console do Application Security e veja os eventos do grupo.