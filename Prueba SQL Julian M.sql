-- Ejercicio 1

SELECT emp_no, first_name, last_name, gender, hire_date
FROM employees
WHERE gender = 'F' 
AND hire_date BETWEEN  '20000101' AND '20230913';


-- Ejercicio 2

SELECT employees.emp_no, employees.first_name, employees.last_name, salaries.salary, MAX(salary) max_salarie
FROM employees.salaries
INNER JOIN salaries ON salaries.salary=employees.emp_no;

-- Ejercicio 3

select employees.emp_no, employees.first_name, employees.last_name, salaries.salary, AVG(salary)promedio 
FROM employees.salaries
inner join salaries WHERE salaries.salary= employees.emp_no='10056';
SELECT AVG(salary) FROM salaries WHERE emp_no='10056';

-- Ejercicio 4

select employees.emp_no, employees.first_name, employees.last_name, employees.birth_date, employees.hire_date,
departments.dept_name, titles.title
FROM employees,departments,titles
INNER JOIN employees ON employees.emp_no=employees.emp_no;

-- Ejercicio 5

SELECT employees.emp_no, employees.first_name, employees.last_name, employees.birth_date, employees.hire_date,
titles.title, departments.dept_name, salaries.salary
FROM employees, departments,titles,salaries
INNER JOIN employees ON employees.emp_no=employees.emp_no;









