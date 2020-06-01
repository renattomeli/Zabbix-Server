zabbix-server
=========

Requerimentos
------------

Modulo do python instalado na maquina executora: PyMySQL

Versão Zabbix
--------------

    zabbix_version: 4.2

Versão do zabbix-server a ser instalado.


Dependencias
------------

As seguintes roles são dependencias da role zabbix-server:

    common
    mysql
    nginx

Playbook Exemplo
----------------

    - hosts: zabbix
      become: true
      

      roles:
        - zabbix-server

Futuros Updates
---------------

    - Possibilidade de tunning na conf do Zabbix Server
    - Checar se é necessário import do schema do Zabbix no banco antes da execução
    - Import de templates padrões

Licença
-------

BSD

Informações sobre o autor
------------------

Esta role foi desenvolvida por Diogo Lima (diogo.lima@rivendel.com.br) e refatorada por Thiago Freitas (thiago.freitas@rivendel.com.br) em 02/2018.
Nova mudança realizada por Marcio Souza (marcio.souza@rivendel.com.br)
