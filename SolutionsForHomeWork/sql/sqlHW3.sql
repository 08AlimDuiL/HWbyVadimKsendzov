-- Вывести всех работников чьи зарплаты есть в базе, вместе с зарплатами
select *
from employees;

select *
from salary;

select *
from employee_salary;

select 
    employees.employee_name, 
    salary.monthly_salary 
from employees
left join employee_salary
on employee_salary.employee_id = employees.id_serial
left join salary
on employee_salary.salary_id  = salary.id_serial
where salary.monthly_salary is not null;

-- Вывести всех работников у которых ЗП меньше 2000.
select 
    employees.employee_name, 
    salary.monthly_salary 
from employees
left join employee_salary
on employee_salary.employee_id = employees.id_serial
left join salary
on employee_salary.salary_id  = salary.id_serial
where salary.monthly_salary < 2000;

/*
    Вывести все зарплатные позиции, но работник по ним не назначен. 
    (ЗП есть, но не понятно кто её получает.)
*/

insert into salary (id_serial, monthly_salary)
values
	('17S', 3000),
	('18S', 4000);

select 
	employees.employee_name,
    salary.monthly_salary 
from salary
left join employee_salary
on employee_salary.salary_id  = salary.id_serial
left join employees
on employee_salary.employee_id = employees.id_serial
where employees.employee_name is null ;

--  Вывести все зарплатные позиции  меньше 2000 но работник по ним не назначен. 
-- ЗП есть, но не понятно кто её получает.);
insert into salary (id_serial, monthly_salary)
values
	('19S', 1990);

select 
	employees.employee_name,
    salary.monthly_salary 
from salary
left join employee_salary
on employee_salary.salary_id  = salary.id_serial
left join employees
on employee_salary.employee_id = employees.id_serial
where employees.employee_name is null
and salary.monthly_salary < 2000;

--  Найти всех работников кому не начислена ЗП;
select 
    employees.employee_name, 
    salary.monthly_salary 
from employees
left join employee_salary
on employee_salary.employee_id = employees.id_serial
left join salary
on employee_salary.salary_id  = salary.id_serial
where salary.monthly_salary is null;

-- Вывести всех работников с названиями их должности;
select *
from employees;

select * 
from roles;

select *
from roles_employee;

select 
	employees.employee_name,
	roles.role_name 
from employees
left join roles_employee
on employees.id_serial = roles_employee.employee_id 
left join roles
on roles.id_serial = roles_employee.roles_id
where roles.role_name is not null;

--  Вывести имена и должность только Java разработчиков;
select *
from roles_employee;

select 
	employees.employee_name,
	roles.role_name 
from employees
left join roles_employee
on employees.id_serial = roles_employee.employee_id 
left join roles
on roles.id_serial = roles_employee.roles_id
where roles.role_name like '%Java developer';

-- Вывести имена и должность только Python разработчиков;
select 
	employees.employee_name,
	roles.role_name 
from employees
left join roles_employee
on employees.id_serial = roles_employee.employee_id 
left join roles
on roles.id_serial = roles_employee.roles_id
where roles.role_name like '%Python developer';

-- Вывести имена и должность всех QA инженеров;
select 
	employees.employee_name,
	roles.role_name 
from employees
left join roles_employee
on employees.id_serial = roles_employee.employee_id 
left join roles
on roles.id_serial = roles_employee.roles_id
where roles.role_name like '%QA%'
order by roles.role_name asc;

--  Вывести имена и должность ручных QA инженеров;
select 
	employees.employee_name,
	roles.role_name 
from employees
left join roles_employee
on employees.id_serial = roles_employee.employee_id 
left join roles
on roles.id_serial = roles_employee.roles_id
where roles.role_name like '%Manual QA engineer%'
order by roles.role_name asc;

--  Вывести имена и должность автоматизаторов QA;
select 
	employees.employee_name,
	roles.role_name 
from employees
left join roles_employee
on employees.id_serial = roles_employee.employee_id 
left join roles
on roles.id_serial = roles_employee.roles_id
where roles.role_name like '%Automation QA engineer%'
order by roles.role_name asc;

--  Вывести имена и зарплаты Junior специалистов;
select 
	employees.employee_name,
	roles.role_name 
from employees
left join roles_employee
on employees.id_serial = roles_employee.employee_id 
left join roles
on roles.id_serial = roles_employee.roles_id
where roles.role_name like 'Junior%'
order by employees.employee_name desc;

--  Вывести имена и зарплаты Middle специалистов;
select 
	employees.employee_name,
	roles.role_name 
from employees
left join roles_employee
on employees.id_serial = roles_employee.employee_id 
left join roles
on roles.id_serial = roles_employee.roles_id
where roles.role_name like '%Middle%'
order by employees.employee_name;

--  Вывести имена и зарплаты Senior специалистов;
select 
	employees.employee_name,
	roles.role_name 
from employees
left join roles_employee
on employees.id_serial = roles_employee.employee_id 
left join roles
on roles.id_serial = roles_employee.roles_id
where roles.role_name like '%Senior%'
order by roles.role_name;

-- Вывести зарплаты Java разработчиков;
select 
	salary.monthly_salary,
	roles.role_name 
from salary
join employee_salary
on salary.id_serial = employee_salary.salary_id 
join employees
on employee_salary.employee_id  =  employees.id_serial 
join roles_employee 
on employees.id_serial = roles_employee.employee_id 
join roles
on roles_employee.roles_id = roles.id_serial
where roles.role_name like '%Java developer';

-- Вывести зарплаты Python разработчиков;
select 
	salary.monthly_salary,
	roles.role_name 
from salary
join employee_salary
on salary.id_serial = employee_salary.salary_id 
join employees
on employee_salary.employee_id  =  employees.id_serial 
join roles_employee 
on employees.id_serial = roles_employee.employee_id 
join roles
on roles_employee.roles_id = roles.id_serial
where roles.role_name like '%Python developer';

-- Вывести имена и зарплаты Junior Python разработчиков;
select 
	salary.monthly_salary,
	roles.role_name 
from salary
join employee_salary
on salary.id_serial = employee_salary.salary_id 
join employees
on employee_salary.employee_id  =  employees.id_serial 
join roles_employee 
on employees.id_serial = roles_employee.employee_id 
join roles
on roles_employee.roles_id = roles.id_serial
where roles.role_name = 'Junior Python developer';

-- Вывести имена и зарплаты Middle JS разработчиков;
insert into roles(id_serial, role_name)
values
    ('21R','Junior JS developer'),
    ('22R','Middle JS developer');

select 
	salary.monthly_salary,
	roles.role_name 
from salary
full join employee_salary
on salary.id_serial = employee_salary.salary_id 
full join employees
on employee_salary.employee_id  =  employees.id_serial 
full join roles_employee 
on employees.id_serial = roles_employee.employee_id 
full join roles
on roles_employee.roles_id = roles.id_serial
where roles.role_name like '%JS developer';  -- monthly_salary NULL

-- Вывести имена и зарплаты Senior Java разработчиков;
select 
	salary.monthly_salary,
	roles.role_name 
from salary
join employee_salary
on salary.id_serial = employee_salary.salary_id 
join employees
on employee_salary.employee_id  =  employees.id_serial 
join roles_employee 
on employees.id_serial = roles_employee.employee_id 
join roles
on roles_employee.roles_id = roles.id_serial
where roles.role_name = 'Senior Java developer';

-- Вывести зарплаты Junior QA инженеров;
select 
	salary.monthly_salary,
	roles.role_name 
from salary
join employee_salary
on salary.id_serial = employee_salary.salary_id 
join employees
on employee_salary.employee_id  =  employees.id_serial 
join roles_employee 
on employees.id_serial = roles_employee.employee_id 
join roles
on roles_employee.roles_id = roles.id_serial
where roles.role_name like 'Junior%QA engineer';

--  Вывести среднюю зарплату всех Junior специалистов;
select 
	avg(salary.monthly_salary) as "Средняя зарплата",
	roles.role_name 
from salary
join employee_salary
on salary.id_serial = employee_salary.salary_id 
join employees
on employee_salary.employee_id  =  employees.id_serial 
join roles_employee 
on employees.id_serial = roles_employee.employee_id 
join roles
on roles_employee.roles_id = roles.id_serial
where roles.role_name like 'Junior%'
group by roles.role_name;

-- Вывести сумму зарплат JS разработчиков;
select 
	sum(salary.monthly_salary) as "Сумма всех зарплат",
	roles.role_name 
from salary
join employee_salary
on salary.id_serial = employee_salary.salary_id 
join employees
on employee_salary.employee_id  =  employees.id_serial 
join roles_employee 
on employees.id_serial = roles_employee.employee_id 
join roles
on roles_employee.roles_id = roles.id_serial
where roles.role_name like '%JS developer'
group by roles.role_name;

-- Вывести минимальную ЗП QA инженеров;
select 
	min(salary.monthly_salary) as "Минимальная з/п",
	roles.role_name 
from salary
join employee_salary
on salary.id_serial = employee_salary.salary_id 
join employees
on employee_salary.employee_id  =  employees.id_serial 
join roles_employee 
on employees.id_serial = roles_employee.employee_id 
join roles
on roles_employee.roles_id = roles.id_serial
where roles.role_name like '%QA engineer'
group by roles.role_name;

-- Вывести максимальную ЗП QA инженеров;
select 
	max(salary.monthly_salary) as "Максимальная з/п",
	roles.role_name 
from salary
join employee_salary
on salary.id_serial = employee_salary.salary_id 
join employees
on employee_salary.employee_id  =  employees.id_serial 
join roles_employee 
on employees.id_serial = roles_employee.employee_id 
join roles
on roles_employee.roles_id = roles.id_serial
where roles.role_name like '%QA engineer'
group by roles.role_name;

-- Вывести количество QA инженеров;
select 
	count(roles.role_name) as "Количество инженеров",
	roles.role_name 
from salary
join employee_salary
on salary.id_serial = employee_salary.salary_id 
join employees
on employee_salary.employee_id  =  employees.id_serial 
join roles_employee 
on employees.id_serial = roles_employee.employee_id 
join roles
on roles_employee.roles_id = roles.id_serial
where roles.role_name like '%QA engineer'
group by roles.role_name;

--  Вывести количество Middle специалистов;
select 
	count(roles.role_name) as "Количество Middle",
	roles.role_name 
from salary
join employee_salary
on salary.id_serial = employee_salary.salary_id 
join employees
on employee_salary.employee_id  =  employees.id_serial 
join roles_employee 
on employees.id_serial = roles_employee.employee_id 
join roles
on roles_employee.roles_id = roles.id_serial
where roles.role_name like 'Middle%'
group by roles.role_name;

--  Вывести количество разработчиков;
select 
	count(roles.role_name) as "Количество разработчиков",
	roles.role_name 
from salary
join employee_salary
on salary.id_serial = employee_salary.salary_id 
join employees
on employee_salary.employee_id  =  employees.id_serial 
join roles_employee 
on employees.id_serial = roles_employee.employee_id 
join roles
on roles_employee.roles_id = roles.id_serial
where roles.role_name like '%developer'
group by roles.role_name;

--  Вывести фонд (сумму) зарплаты разработчиков;
select 
	sum(salary.monthly_salary) as "Фонд" 
from salary
join employee_salary
on salary.id_serial = employee_salary.salary_id 
join employees
on employee_salary.employee_id  =  employees.id_serial 
join roles_employee 
on employees.id_serial = roles_employee.employee_id 
join roles
on roles_employee.roles_id = roles.id_serial
where roles.role_name like '%developer';

--  Вывести имена, должности и ЗП всех специалистов по возрастанию;
select 
	employees.employee_name,
	salary.monthly_salary,
	roles.role_name 
from salary
join employee_salary
on salary.id_serial = employee_salary.salary_id 
join employees
on employee_salary.employee_id  =  employees.id_serial 
join roles_employee 
on employees.id_serial = roles_employee.employee_id 
join roles
on roles_employee.roles_id = roles.id_serial
order by salary.monthly_salary asc;

-- Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у 
-- которых ЗП от 1700 до 2300;
select 
	employees.employee_name,
	salary.monthly_salary,
	roles.role_name 
from salary
join employee_salary
on salary.id_serial = employee_salary.salary_id 
join employees
on employee_salary.employee_id  =  employees.id_serial 
join roles_employee 
on employees.id_serial = roles_employee.employee_id 
join roles
on roles_employee.roles_id = roles.id_serial
where salary.monthly_salary between 1700 and 2300
order by salary.monthly_salary asc;

-- Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у 
-- которых ЗП меньше 2300;
select 
	employees.employee_name,
	salary.monthly_salary,
	roles.role_name 
from salary
join employee_salary
on salary.id_serial = employee_salary.salary_id 
join employees
on employee_salary.employee_id  =  employees.id_serial 
join roles_employee 
on employees.id_serial = roles_employee.employee_id 
join roles
on roles_employee.roles_id = roles.id_serial
where salary.monthly_salary < 2300
order by salary.monthly_salary asc;

--  Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у
--  которых ЗП равна 1100, 1500, 2000.
select 
	employees.employee_name,
	salary.monthly_salary,
	roles.role_name 
from salary
join employee_salary
on salary.id_serial = employee_salary.salary_id 
join employees
on employee_salary.employee_id  =  employees.id_serial 
join roles_employee 
on employees.id_serial = roles_employee.employee_id 
join roles
on roles_employee.roles_id = roles.id_serial
where salary.monthly_salary in (1100, 1500, 2000)
order by salary.monthly_salary asc;