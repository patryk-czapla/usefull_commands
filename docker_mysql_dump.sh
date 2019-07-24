docker exec CONTAINER /usr/bin/mysqldump -u root --password=PASSWORD DATABASE > backup.sql
cat backup.sql | docker exec -i CONTAINER /usr/bin/mysql -u root --password=PASSWORD DATABASE
