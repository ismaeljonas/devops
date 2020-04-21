
## Para criar o Container do pgadmin-4 utilizando uma imagem publica basta executar: 

```docker
docker network create --driver bridge postgres-network && docker run -it -d --name pgadmin-4 --network=postgres-network -p 15432:80 -e "PGADMIN_DEFAULT_EMAIL=conta@email.com" -e "PGADMIN_DEFAULT_PASSWORD=passw0rd" dpage/pgadmin4
```
>lembre-se de alterar o e-mail e password default
# Só isso \o/