# Desafio Golang

## Repositório

Baixar a imagem da aplicação

[https://hub.docker.com/repository/docker/rbferreyra/codeeducation](https://hub.docker.com/repository/docker/rbferreyra/codeeducation)

Executar a imagem

```bash
docker run rbferreyra/codeeducation
```

## Desafio

Você terá que publicar uma imagem no docker hub. Quando executarmos:

```bash
docker run <seu-user>/codeeducation
```

Temos que ter o seguinte resultado: Code.education Rocks!

Se você perceber, essa imagem apenas realiza um print da mensagem como resultado final, logo, vale a pena dar uma conferida no próprio site da Go Lang para aprender como fazer um "olá mundo".

Lembrando que a Go Lang possui imagens oficiais prontas, vale a pena consultar o Docker Hub.

A imagem de nosso projeto Go precisa ter menos de 2MB

## Abordagem

No primeiro momento, foi feito um Dockerfile com a imagem "oficial" do golang, porém o mesmo gerou uma imagem acima de 150MB. 

Então, basta gerar um binário do arquivo .go e utilizar uma imagem bem "pequena", assim gerando uma imagem de 2.1MB. Mas, está acima dos 2MB propostos, assim podemos utilizar alguns parâmetros do build para reduzir o tamanho do binário.

```bash
build -ldflags "-s -w" ./main.go
```

Após isso, a imagem reduziu para 1.21MB :trollface:
