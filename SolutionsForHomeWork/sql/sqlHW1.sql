-- Создать таблицу employees
create table employees
(
	id_serial int not null,
	employee_name varchar(50) not null,
	primary key (id_serial)
);

-- Наполнить таблицу employees 70 строками
insert into employees
(
  id_serial, employee_name
)
values 
  (1, 'Alfonsus'),
  (2, 'Alfeeus'),
  (3, 'Bekchus'),
  (4, 'Gayyus'),
  (5, 'Doraseus'),
  (6, 'Dorienus'),
  (7, 'Drako'),
  (8, 'Evander'),
  (9, 'Evventiy'),
  (10, 'Zemistokl'),
  (11, 'Zeokritus'),
  (12, 'Kaliks'),
  (13, 'Kemillus'),
  (14, 'Kerolus'),
  (15, 'Kereytakus'),
  (16, 'Kessius'),
  (17, 'Kessien'),
  (18, 'Kyurinus'),
  (19, 'Lavr'),
  (20, 'Livius'),
  (21, 'Livienus'),
  (22, 'Londzhinus'),
  (23, 'Marius'),
  (24, 'Mark'),
  (25, 'Markellinus'),
  (26, 'Markus'),
  (27, 'Menlius'),
  (28, 'Merinus'),
  (29, 'Merienus'),
  (30, 'Napoleon'),
  (31, 'Nezerius'),
  (32, 'Ovid'),
  (33, 'Ovidius'),
  (34, 'Ogastinus'),
  (35, 'Peremonus'),
  (36, 'Peshelis'),
  (37, 'Rubentiy'),
  (38, 'Rudolfus'),
  (39, 'Severian'),
  (40, 'Severin'),
  (41, 'Severinus'),
  (42, 'Severienus'),
  (43, 'Severus'),
  (44, 'Sekstus'),
  (45, 'Skeevola'),
  (46, 'Sperius'),
  (47, 'Stanislas'),
  (48, 'Stefenas'),
  (49, 'Strator'),
  (50, 'Studiy'),
  (51, 'Stezius'),
  (52, 'Tation'),
  (53, 'Teofilus'),
  (54, 'Tetienus'),
  (55, 'Uran'),
  (56, 'Florentiy'),
  (57, 'Fulvius'),
  (58, 'Feedrus'),
  (59, 'Hadrian'),
  (60, 'Hedrienus'),
  (61, 'Cerber'),
  (62, 'Cesar'),
  (63, 'Ciceron'),
  (64, 'Everistus'),
  (65, 'Egnetius'),
  (66, 'Efezius'),
  (67, 'Yuvenaliy'),
  (68, 'Yulian'),
  (69, 'Yanus'),
  (70, 'Yanuyarei');

-- Создать таблицу salary
create table salary
(
  id_serial int not null,
  monthly_salary int not null,
  primary key (id_salary)
);

-- Наполнить таблицу salary 16 строками
insert into salary 
(
  id_salary,monthly_salary
)
values
	(1, 1000),
	(2, 1100),
	(3, 1200),
	(4, 1300),
	(5, 1400),
	(6, 1500),
	(7, 1600),
	(8, 1700),
	(9, 1800),
	(10, 1900),
	(11, 2000),
	(12, 2100),
	(13, 2200),
	(14, 2300),
	(15, 2400),
	(16, 2500);

-- Создать таблицу employee_salary
create table employee_salary
(
	id_serial int not null,
	employee_id int unique not null,
	salary_id int not null,
	primary key (id_serial)
);

-- Мои изменения в базе
alter table employee_salary
alter column employee_id type varchar(30),
alter column salary_id type varchar(30);

alter table employee_salary
add foreign key (employee_id) references employees(id_serial),
add foreign key (salary_id) references salary(id_serial);

alter table salary
alter column id_serial type varchar(30);

alter table employees
alter column id_serial type varchar(30);

update employees
set id_serial = concat(id_serial, 'emp');

update salary
set id_serial = concat(id_serial, 'S');

-- Наполнить таблицу employee_salary 40 строками,
insert into employee_salary 
(
	id_serial, employee_id, salary_id
)
values
	(1, '1emp', '1S'),
	(2, '2emp', '2S'),
	(3, '3emp', '3S'),
	(4, '4emp', '4S'),
	(5, '5emp', '5S'),
	(6, '6emp', '6S'),
	(7, '7emp', '7S'),
	(8, '8emp', '8S'),
	(9, '9emp', '9S'),
	(10, '10emp', '10S'),
	(11, '11emp', '11S'),
	(12, '12emp', '12S'),
	(13, '13emp', '13S'),
	(14, '14emp', '14S'),
	(15, '15emp', '15S'),
	(16, '16emp', '16S'),
	(17, '17emp', '10S'),
	(18, '18emp', '10S'),
	(19, '19emp', '10S'),
	(20, '20emp', '10S'),
	(21, '21emp', '10S'),
	(22, '22emp', '10S'),
	(23, '23emp', '10S'),
	(24, '24emp', '10S'),
	(25, '25emp', '10S'),
	(26, '26emp', '10S'),
	(27, '27emp', '10S'),
	(28, '28emp', '10S'),
	(29, '29emp', '10S'),
	(30, '30emp', '10S');

-- в 10 строк из 40 вставить несуществующие employee_id
insert into employee_salary 
(
	id_serial, employee_id, salary_id
)
values
	(31, '71emp', '16S'),
	(32, '72emp', '16S'),
	(33, '73emp', '16S'),
	(34, '74emp', '16S'),
	(35, '75emp', '16S'),
	(36, '76emp', '16S'),
	(37, '77emp', '16S'),
	(38, '78emp', '16S'),
	(39, '79emp', '16S'),
	(40, '80emp', '16S');
/*
SQL Error [23503]: ERROR: insert or update on table "employee_salary" 
violates foreign key constraint "employee_salary_employee_id_fkey"
Подробности: Key (employee_id)=(71emp) is not present in table "employees".
*/

-- Создать таблицу roles
create table roles
(
	id_serial int not null,
	role_name int unique not null,
	primary key (id_serial)
);

-- Поменять тип столба role_name с int на varchar(30)
alter table roles
alter column role_name type varchar(30);

-- Наполнить таблицу roles 20 строками
insert into roles
(
	id_serial, role_name
)
values 
	(1, 'Junior Python developer'),
	(2, 'Middle Python developer'),
	(3, 'Senior Python developer'),
	(4, 'Junior Java developer'),
	(5, 'Middle Java developer'),
	(6, 'Senior Java developer'),
	(7, 'Junior JavaScript developer'),
	(8, 'Middle JavaScript developer'),
	(9, 'Senior JavaScript developer'),
	(10, 'Junior Manual QA engineer'),
	(11, 'Middle Manual QA engineer'),
	(12, 'Senior Manual QA engineer'),
	(13, 'Project Manager'),
	(14, 'Designer'),
	(15, 'HR'),
	(16, 'CEO'),
	(17, 'Sales manager'),
	(18, 'Junior Automation QA engineer'),
	(19, 'Middle Automation QA engineer'),
	(20, 'Senior Automation QA engineer');

-- Создать таблицу roles_employee
create table roles_employee
(
	id_serial int not null,
	primary key (id_serial),
	employee_id varchar(30) unique not null,
	foreign key(employee_id) references employees (id_serial),
	roles_id  varchar(30) not null,
	foreign key(roles_id) references roles (id_serial)
);

-- Мои изменения в базе
alter table employees
alter column id_serial type varchar(30);

update employees
set id_serial = concat(id_serial, 'emp');

alter table roles
alter column id_serial type varchar(30);

update roles
set id_serial = concat(id_serial, 'R');

-- Наполнить таблицу roles_employee 40 строками
insert into roles_employee
(
	id_serial, employee_id, roles_id
)
values
	(1, '1emp', '1R'),
	(2, '2emp', '2R'),
	(3, '3emp', '3R'),
	(4, '4emp', '4R'),
	(5, '5emp', '5R'),
	(6, '6emp', '6R'),
	(7, '7emp', '7R'),
	(8, '8emp', '8R'),
	(9, '9emp', '9R'),
	(10, '10emp', '10R'),
	(11, '11emp', '11R'),
	(12, '12emp', '12R'),
	(13, '13emp', '13R'),
	(14, '14emp', '14R'),
	(15, '15emp', '15R'),
	(16, '16emp', '16R'),
	(17, '17emp', '17R'),
	(18, '18emp', '18R'),
	(19, '19emp', '19R'),
	(20, '20emp', '20R'),
	(21, '21emp', '1R'),
	(22, '22emp', '2R'),
	(23, '23emp', '4R'),
	(24, '24emp', '4R'),
	(25, '25emp', '5R'),
	(26, '26emp', '7R'),
	(27, '27emp', '8R'),
	(28, '28emp', '10R'),
	(29, '29emp', '10R'),
	(30, '30emp', '10R'),
	(31, '31emp', '11R'),
	(32, '32emp', '13R'),
	(33, '33emp', '14R'),
	(34, '34emp', '4R'),
	(35, '35emp', '4R'),
	(36, '36emp', '18R'),
	(37, '37emp', '17R'),
	(38, '38emp', '18R'),
	(39, '39emp', '19R'),
	(40, '40emp', '20R');