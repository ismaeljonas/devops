#!/bin/bash

# Autor: Rogério Souza
# Data de criação: 19/04/2020
# Funçao: Realizar stress de uma aplicação WEB
# através de 100 mil chamadas CuRL no endereço
# do cluster salvando o resultado no arquivo
# stress.txt para fins de auditoria  

for i in {1..100000}; do

    curl http://ip:porta > stress.txt
    sleep $1

done    

# Para rodar o script é necessário dar permissão
# de execução com o comando chmod +x stress.sh
# e depois executar com parâmetro de tempo
# ./stress.sh 0.01