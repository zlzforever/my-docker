```
docker exec -it mysql-mysql-1 bash

mysql -uroot -p1qazZAQ!

use mysql;
update user set host='%' where user='root';
flush privileges;
```
