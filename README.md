# Instruções

## Iniciar o MySQL

```shell
sudo service mysql start
```

## Copiar a aplicação para o seu ambiente

```shell
git clone https://github.com/estagioemprogramacao/store.git
```

## Preparar a aplicação

```shell
cd store
bundle install  # instala gems
rake db:create  # cria banco de dados
rake db:migrate # cria estrutura (tabelas, índices) do banco de dados
```

## Executar a aplicação

```shell
rails s
```

Acessar pelo endereço do seu ambiente, por exemplo:

[http://localhost:3000/](http://localhost:3000/)
