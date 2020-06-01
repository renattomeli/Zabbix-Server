zabbix-agent
=========

Agente de monitoramento do Zabbix versão 4.2, basicamente envia informações sobre o node/nó para o servidor Zabbix

Requerimentos
------------

Hosts tem que ser na AWS e necessita Access Key e Secret Key para coleta do hostname automatico.

Variáveis
--------------

Abaixo informacões sobre as variáveis, assim como seus valores padrão

    url_agent_centos6: "http://repo.zabbix.com/zabbix/4.2/rhel/6/x86_64/zabbix-agent-4.2.1-1.el6.x86_64.rpm"
    url_agent_centos7: "http://repo.zabbix.com/zabbix/4.2/rhel/7/x86_64/zabbix-agent-4.2.1-1.el7.x86_64.rpm"
    url_agent_amazonna: "http://repo.zabbix.com/zabbix/4.2/rhel/6/x86_64/zabbix-agent-4.2.1-1.el6.x86_64.rpm"
    url_agent_amazonna2: "http://repo.zabbix.com/zabbix/4.2/rhel/7/x86_64/zabbix-agent-4.2.1-1.el7.x86_64.rpm"
    url_agent_ubuntu18: "http://repo.zabbix.com/zabbix/4.2/ubuntu/pool/main/z/zabbix/zabbix-agent_4.2.1-1%2Bbionic_amd64.deb"
    url_agent_ubuntu16: "http://repo.zabbix.com/zabbix/4.2/ubuntu/pool/main/z/zabbix/zabbix-agent_4.2.1-1%2Bxenial_amd64.deb"

Links de instalação para cada versão do Zabbix agent. É possível alterar a versão copiando o link do repo.zabbix.com

    zabbix_server_ip: 127.0.0.1

IP do servidor zabbix-server, é através desse parametro que o zabbix-agent irá se comunicar com o servidor.

    zabbix_hostmetadata: os-linux

Grupo metadata que será cadastrado na execução do zabbix-agent, esta configuração permite que no primeiro contato do servidor com o zabbix-server seja possivel que ele já entre em um grupo de hosts.

Dependências
------------

Nenhum

Playbook Exemplo
----------------

    - hosts: all
      vars:
        zabbix_server_ip: '192.168.0.0'
        zabbix_hostmetadata: 'os-linux'
        access_key: ""
        secret_key: ""
      become: yes
      roles:
         - zabbix-agent

Licença
-------

BSD

Informações sobre o autor
------------------

Esta role foi desenvolvida por Diogo Lima (diogo.lima@rivendel.com.br), refatorada por Thiago Freitas (thiago.freitas@rivendel.com.br) em 02/2018 e novo refatoramento por Marcio Souza (marcio.souza@rivendel.com.br) em 05/2019.
