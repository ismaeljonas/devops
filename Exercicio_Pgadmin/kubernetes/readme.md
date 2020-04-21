# Inicie o Minikube
```
minikube start
```

# Para criar um namespace especifico execute o comando

```kubectl
kubectl create namespace ex4it

```
# Para criar o POD do pgadmin-4
 execute:

```kubectl
kubectl create -f app-pgadmin-4.yml --namespace=ex4it
```

Após a criação do pod execute

```
kubectl get deployments -n=ex4it
```
>Lembre-se: é necessário incluir o "-n" para informar qual namespace gostaria de executar esta consuta
---
# Para criar o Serviço para acessar o pgadmin-4
 execute:
```kubectl
kubectl create -f servico-pgadmin-4.yml --namespace=ex4it
``` 
Você receberá a mensagem
deployment.apps/pgadmin-4 created


> lembre-se de alterar as variáveis de e-mail e password default no ymal correspondente ao app dentro das variávies de ambiente

```
env:
            - name: PGADMIN_DEFAULT_EMAIL
              value: "conta@email.com"
            - name: PGADMIN_DEFAULT_PASSWORD
              value: "passw0rd"
```
Você receberá a mensagem:
```service/pgadmin-public created```

Execute o comando:
```kubectl get services -n=ex4it```
NAME             TYPE           CLUSTER-IP      EXTERNAL-IP   PORT(S)        AGE
pgadmin-4        ClusterIP      None            <none>        80/TCP         4m
pgadmin-public   LoadBalancer   10.108.91.167   <pending>     80:30758/TCP   1m

> Visto se tratar de um deploy local ñ será possível gerar um ip externo --> EXTERNAL-IP <pending>  

```kubectl get pods -n=ex4it```
NAME                         READY   STATUS    RESTARTS   AGE
pgadmin-4-696966d568-9bbjd   1/1     Running   0          5m

