# quản trị cơ sở dữ liệu

## môi trường cài đặt

- Manjaro Linux (gnome version latest)

## notes

- password: Mssqltest123

**setup**

```bash
sudo systemctl enable mssql-server.service
sudo systemctl start mssql-server.service
sleep 5
usql ms://SA:Mssqltest123@localhost
```

```bash
# use sqlcmd instend of usql
sqlcmd -S localhost -U SA -P Mssqltest123
```

**cleanup**

```bash
sudo systemctl disable mssql-server.service
sudo systemctl stop mssql-server.service
```

-- Step 1 : Detach Database using following script
USE [master]
GO
EXEC MASTER.dbo.sp_detach_db @dbname = N'test',
@keepfulltextindexfile = N'true'
GO
-- Step 2 : Move Data files and Log files to new location
-- Do this step and move to Step 3
-- Step 3 : Attach Database using following script
USE [master]
GO
CREATE DATABASE [test] ON
( FILENAME = N'/home/master/repos/quan_tri_co_so_du_lieu/test_data.mdf' ),
( FILENAME = N'/home/master/repos/quan_tri_co_so_du_lieu/test_log.ldf' )
FOR ATTACH
GO
IF EXISTS ( SELECT name
FROM MASTER.sys.databases sd
WHERE name = N'test'
AND SUSER_SNAME(sd.owner_sid) = SUSER_SNAME() )
EXEC [test].dbo.sp_changedbowner @loginame=N'SA',
@map=false
GO
