# quản trị cơ sở dữ liệu

## môi trường cài đặt

- Manjaro Linux (gnome version latest)

## notes

- password: Mssqltest123

**setup**

```bash
sudo systemctl enable mssql-server.service
sudo systemctl start mssql-server.service
sudo systemctl status mssql-server.service
sqlcmd -S localhost -U SA -P Mssqltest123
```

**cleanup**

```bash
sudo systemctl disable mssql-server.service
sudo systemctl stop mssql-server.service
```
