# SQL Server init
docker run -e "ACCEPT_EULA=Y" -e "MSSQL_SA_PASSWORD=SuaSenhaForte123!" -p 1433:1433 --name sql_teste -d mcr.microsoft.com/mssql/server:2022-latest
