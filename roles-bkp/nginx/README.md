[![pipeline status](https://gitlab.com/Rivendel-Labs/ansible/roles/nginx/badges/master/pipeline.svg)](https://gitlab.com/Rivendel-Labs/ansible/roles/nginx/commits/master)

# nginx

Role para instalacao do nginx, variaveis que podem ser definidas:

nginx_proxy_enabled: false
  * habilita configuracao para o uso de proxy.

nginx_proxy_port: 3000
  * configuracao de porta quando habilitado nginx_proxy_enabled.

nginx_proxy_host: localhost
  * configuracao de host quando habilitado nginx_proxy_enabled.

nginx_php_enabled: false
  * habilita configuracao para o uso do php-fpm, requer a role php-fpm.

nginx_ssl_enabled: false
  * habilita o https, caso nao seja definido os parametros nginx_ssl_key e nginx_ssl_crt, ele irá gerar um certificado self-signed.

nginx_ssl_path: /etc/nginx/ssl
  * caminho para os arquivos de certificado.

nginx_server_name: example.local
  * server_name a ser utilizado, ex: rivendel.com.br. por default ele responde para todos os dominios.

nginx_server_root: /usr/share/nginx/html
  * caminho dos arquivos html.

## certificados do dominio

nginx_ssl_key: hash-base64
  * chave para o certificado proprio do dominio, definido no nginx_server_name, este parametro deve receber um hash base64, ex:
  `$ cat example.key | base64 -w0`

nginx_ssl_key: hash-base64
  * certificado proprio do dominio, definido no nginx_server_name, este parametro tambem deve receber um hash base64, ex:
  `$ cat example.crt | base64 -w0`
