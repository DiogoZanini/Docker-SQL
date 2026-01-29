# Docker-SQL
Banco de dados SQL em modo sandbox usando Docker para um ambiente limpo, com melhor desempenho do que uma máquina virtual e sem a necessidade de configurar o IDE novamente.

[**EN-US**](../README.md)

## Dependências
- [Instalação do Docker](https://www.docker.com/products/docker-desktop/)

## Solução de Problemas
Durante a configuração inicial, encontrei e resolvi os seguintes problemas:

### 1. Erro de Logon (18456, Estado 38)
- **Problema:** Falha ao conectar via VS Code usando o nome do contêiner como banco de dados. O SQL Server requer um banco de dados válido para o login inicial (como `master`). O nome do contêiner Docker não é automaticamente o nome de um banco de dados interno.
- **Solução:** Deixe o campo Banco de Dados em branco ou defina-o como `master` na primeira conexão.

### 2. Criptografia e Certificado
- **Problema:** Erro SSL/TLS ao conectar localmente.
- **Solução:** Habilite a opção `Trust Server Certificate: True` e configure `Encrypt:Optional` (ou `False`) no cliente SQL, já que o ambiente é para desenvolvimento local.
