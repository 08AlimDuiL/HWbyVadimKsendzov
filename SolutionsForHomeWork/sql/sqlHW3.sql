-- Вывести всех работников чьи зарплаты есть в базе, вместе с зарплатами
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

