# loginAppSymfony
Simple web app in Symfony

database mysql dump included with sample data

```console
mysql -u username -p new_database_name < data-dump.sql
```

in .env change

```php
DATABASE_URL="mysql://username:db_password@127.0.0.1:3306/new_database_name?charset=utf8mb4"
```

password for all users is 123456



run Symfony server

```console
symfony server:start
```

