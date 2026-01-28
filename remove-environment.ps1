# Stop and remove docker and internal files
docker rm -f sql_teste

# Remove imagem do sql (opcional caso não vá usar)
docker rmi mcr.microsoft.com/mssql/server:2022-latest

# Remove imagens que não estão sendo usadas (opcional)
docker image prune -f

# limpa qualquer resíduo de banco de dados
docker volume prune -f
