# Docker-SQL
Sandbox SQL database using Docker for a clean environment, with better performance than a VM and no need to setup the IDE again in it.

## Dependencies
- [Docker Installation](https://www.docker.com/products/docker-desktop/)

## Troubleshooting

During the initial setup, I encountered and resolved the following challenges:

### 1. Logon Error (18456, State 38)
- **Problem:** Failed to connect via VS Code using the container name as the database.
- **Cause:** SQL Server requires a valid database for the initial login (such as `master`). The Docker container name is not automatically the name of an internal database.
- **Solution:** Leave the Database field blank or set it to `master` on the first connection.

### 2. Encryption and Certificate
- **Problem:** SSL/TLS error when connecting locally.
- **Solution:** Enable the `Trust Server Certificate: True` option and configure `Encrypt:Optional` (or `False`) in the SQL client, since the environment is for local development.
