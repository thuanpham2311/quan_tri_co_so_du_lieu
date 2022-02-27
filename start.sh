#! /usr/bin/env sh

sudo systemctl enable mssql-server.service
sudo systemctl start mssql-server.service

# Wait for the server to start
sleep 5

# use sqlcmd instend of usql
# sqlcmd -S localhost -U SA -P Mssqltest123

usql ms://SA:Mssqltest123@localhost
