MySQL
================================================================================

[![pipeline status](https://gitlab.com/Rivendel-Labs/ansible/roles/mysql/badges/master/pipeline.svg)](https://gitlab.com/Rivendel-Labs/ansible/roles/mysql/commits/master)

Requerimentos
--------------------------------------------------------------------------------

Variaveis
--------------------------------------------------------------------------------

Abaixo as variaveis definidas na role:

Versão do MySQL para instalação na distribuição Debian.

    mysql_release_debian: mysql-5.7

Versão do MySQL para instalação da familia RedHat.

    mysql_release_redhat: mysql-5.6-community

Porta em que o MySQL irá subir.

    mysql_port: 3306

Irá definir se o banco de dados irá rodar apenas local ou se estará aberto.

    mysql_socket_enabled: false
    
Diretorio de dados do mysql.

    mysql_datadir: /var/lib/mysql
    
Endereços que podem visualizar.

    mysql_bind_address: 127.0.0.1
    
Depêndencias
--------------------------------------------------------------------------------

Essa role não tem nenhuma depêndencia

Playbook de exemplo
--------------------------------------------------------------------------------

    ---
      - hosts: all
        roles:
            - mysql

License
--------------------------------------------------------------------------------

BSD

Informacoes sobre o autor
--------------------------------------------------------------------------------

Esta role foi criada em 2018 por Guilherme Saijo (guilherme.saijo@rivendel.com.br)
         

