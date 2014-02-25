Minha Prova
===========

Minha Prova é uma aplicação para servir como banco de questões para as 
diversas disciplinas ministradas por professores em cursos superiores.

Este é um guia geral para qualquer um que queira usar, como também, colaborar
com melhorias e reportando bugs.

###Versão do Ruby e Rails
Esta aplicação foi feita usando Ruby 2.0 e Rails 4.0

###Configuração

Para rodar o sistema localmente, basta rodar os seguintes passos:

  - Clonar o repositório
  - Instalar gems ``` bundle install ```
  - Rodar migrations ``` rake db:migrate ```
  - Rodar seeds ``` rake db:seed ```

###Banco de Dados
No ambiente de desenvolvimento, usamos o *MySQL*. Certifique-se que você tem instalado em seu computador o *MySQL*, caso não tenha, consulte o [Site do MySQL]

###Gem importantes
Algumas gems foram usadas para facilitar o desenvolvimento da aplicação. As mais importantes são:

* [Devise] para autenticação
* [Simple Form] para facilitar a construção de formulários
* [Rails Admin] para construção do backend da aplicação
* [Capistrano] para deploy

## Contribuindo
Seria incrivel ter mais pessoas envolvidas nesse projeto. Para contribuir basta
seguir os passos abaixo:

1. Faça um fork do repositório
2. Crie um branch para sua nova feature (`git checkout -b my-new-feature`)
3. Commit suas mudanças (`git commit -am 'Add some feature'`)
4. Dê um push para o novo branch (`git push origin my-new-feature`)
5. Crie um novo Pull Request


[Site do MySQL]:http://dev.mysql.com/downloads
[Devise]:https://github.com/plataformatec/devise
[Simple Form]:https://github.com/plataformatec/simple_form
[Rails Admin]:https://github.com/sferik/rails_admin
[Capistrano]:https://github.com/capistrano/capistrano
