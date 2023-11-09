-- Вывести все поля и все строки
select *
from students;

-- Вывести всех студентов в таблице
select 
    "name", 
    count("name") as count
from students
group by name;

select distinct "name"
from students;

-- Вывести только Id пользователей
select "id"
from students;

-- Вывести только имя пользователей
select  "name"
from students;

--  Вывести только email пользователей
select "email"
from students;

--  Вывести имя и email пользователей
select 
    "id",
    "name"
from students;

-- Вывести id, имя, email и дату создания пользователей
select
    "id",
    "name",
    "email",
    "created_on"
from students;

-- Вывести пользователей где password 12333
select 
    "id",
    "name",
    "email",
    "created_on"
from students
where "password" like '12333';

-- Вывести пользователей которые были созданы 2021-03-26 00:00:00
select 
    "id",
    "name",
    "email",
    "created_on"
from students
where "created_on"  = '2021-03-26 00:00:00';

--  Вывести пользователей где в имени есть слово Анна
select 
    "id",
    "name",
    "email",
    "created_on"
from students
where "name"  like '%Anna%';

-- Вывести пользователей где в имени в конце есть 8
select 
    "id",
    "name",
    "email",
    "created_on"
from students
where "name"  like '%8';

-- Вывести пользователей где в имени в есть буква а
select 
    "id",
    "name",
    "email",
    "created_on"
from students
where "name"  like '%a%' or "name" like '%A%';

-- Вывести пользователей которые были созданы 2021-07-12 00:00:00
select 
    "id",
    "name",
    "created_on"
from students
where "created_on"  = '2021-07-12 00:00:00';

-- Вывести пользователей которые были созданы 2021-07-12 00:00:00 и имеют пароль 1m313
select 
    "id",
    "name",
    "created_on"
from students
where 
    "created_on"  = '2021-07-12 00:00:00'
and 
    "password" = '1m313'
;

-- Вывести пользователей которые были созданы 2021-07-12 00:00:00 
-- и у которых в имени есть слово Andrey
select 
    "id",
    "name",
    "created_on"
from students
where 
    "created_on"  = '2021-07-12 00:00:00'
and 
    "name" like '%Andrey%'
;

-- Вывести пользователей которые были созданы 2021-07-12 00:00:00 
-- и у которых в имени есть цифра 8
select 
    "id",
    "name",
    "created_on"
from students
where 
    "created_on"  = '2021-07-12 00:00:00'
and 
    "name" like '%8%'
;

--  Вывести пользователя у которых id равен 110
select 
    "id",
    "name"
from students
where "id" = 110;

-- Вывести пользователя у которых id равен 153
select 
    "id",
    "name"
from students
where "id" = 153;

-- Вывести пользователя у которых id больше 140
select 
    "id",
    "name"
from students
where "id" > 140;

-- Вывести пользователя у которых id меньше 130
select 
    "id",
    "name"
from students
where "id" < 130;

-- Вывести пользователя у которых id меньше либо равно 137
select 
    "id",
    "name"
from students
where "id" <= 137
order by "id" asc;

--  Вывести пользователя у которых id больше либо равно 137
select 
    "id",
    "name"
from students
where "id" >= 137
order by "id" asc;

-- Вывести пользователя у которых id больше 180 но меньше 190
select 
    "id",
    "name"
from students
where 
    "id" > 180 
and 
    "id"  < 190
order by "id";

-- Вывести пользователя у которых id между 180 и 190
select 
    "id",
    "name"
from students
where "id"between 180 and 190
order by "id" desc;

-- Вывести пользователей где password равен 12333, 1m313, 123313
select 
    "id",
    "name",
    "password"
from students
where "password" in ('12333', '1m313', '123313');

-- Вывести пользователей где created_on равен 
-- 2020-10-03 00:00:00, 2021-05-19 00:00:00, 2021-03-26 00:00:00
select 
    "id",
    "name",
    "created_on"
from students
where  "created_on" in ('2020-10-03 00:00:00', '2021-05-19 00:00:00', '2021-03-26 00:00:00')
order by "created_on" desc;

--  Вывести минимальный id 
select min("id") as "min_id"
from students;  -- 112

select "id"
from students
order by "id" asc
limit 1;

--  Вывести максимальный
select max(id) as "max_id"  -- 628
from students;

select "id"
from students
order by "id" desc
limit 1;

--  Вывести количество пользователей
select count(*) as "total_users"
from students; -- 134

--  Вывести id пользователя, имя, дату создания пользователя.
-- Отсортировать по порядку возрастания даты добавления пользоватлеля
select 
    "id",
    "name",
    "created_on"
from students
order by "created_on" asc;

--  Вывести id пользователя, имя, дату создания пользователя.
-- Отсортировать по порядку убывания даты добавления пользоватлеля
select 
    "id",
    "name",
    "created_on"
from students
order by "created_on" desc;