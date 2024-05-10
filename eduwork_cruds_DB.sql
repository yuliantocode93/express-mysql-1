## set password for root@localhost = password('1234');
create database eduwork_cruds;
use eduwork_cruds;
show tables;

insert into products (name, price, stock, status)
values ('axioo', 15000, 10, 1);

insert into products 
values (null, 'pongo', 20000, 20, 0);

select * from products;

insert into products 
values (3, 'zyrex', 10000, 5, 2);

select * from products;

use eduwork_cruds;
CREATE TABLE users (
    id INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    nama VARCHAR(30) NOT NULL,
    email VARCHAR(50),
    alamat VARCHAR(30) NOT NULL
);

show tables;
describe users;
describe products;
insert into users 
values (null, "yulian", "yulian@gmail.com", "lampung");
select * from users;
insert into users 
values (null, "yulianto", "yulianto@gmail.com", "jakarta");
select * from users;
delete from products where id = 3;
select * from products;
update products set stock = 15, status = 0 where id = 1;
select * from products where status = 0;
select * from products where name like'Axioo' or status = 1;
select * from products where name like'%Axioo%' or status = 1;

## JOIN, FULL JOIN, LEFT JOIN, RIGHT JOIN ##
select * from products a inner join users b on a.users_id = b.id where b.id = 1;
select a.*, b.nama from products a inner join users b on a.users_id = b.id where b.id;
select a.*, b.nama from products a left join users b on a.users_id = b.id;



