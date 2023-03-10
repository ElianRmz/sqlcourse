

CREATE DATABASE test;
USE test;

CREATE TABLE `employees`(
`ìd` int(11) NOT NULL,
`employeeNumber` int(11) NOT NULL,
`lastName` varchar(256) NOT NULL,
`firstName` varchar(50) NOT NULL,
`email` varchar(100) NOT NULL,
`extension` varchar(10) NOT NULL,
`officeCode` varchar(10) NOT NULL,
`jobTitle`varchar(50) NOT NULL
)DEFAULT CHARSET= latin1;
ALTER TABLE employees DROP COLUMN extension;
ALTER TABLE employees ADD extensions INT;

/*Select * FROM employees;

insert into `employees` (`id`,`employeeNumber`,`lastName`, `email`, `officeCode`, `jobtitle`)
values
(1,1001,'ponce','Victor','vponce@strapp.com','1','president')
 (2,1002,'gomez','Frida','fgomez@strapp.com','2','VP marketing')

select * FROM products*/

select productName,buyPrice,
	buyPrice*1.16 as 'precio con iva'
    from products;

select * 
from employees
where employeeNumber > 1200; 

select * 
from employees
where jjobTitleobTitle = 'Sales Rep';
 select * 
 from employees 
 where officeCode = 1;
 select *
 from employees
 where officeCode = 1058;
 
 select employeeNumber, lastName, firstName from 
 employees
 where employeeNumber >=1000 and
 employeeNumber <=2000;
 
 select employeeNumber, lastName, firstName
 from employees
 where jobTitle = 'Sales Rep'; reportsTo = 1143;
 
 select employeeNumber, lastName, firstName
 from employees
 where reportsTo = 1002 && firstName != 'jeff';

SELECT officeCode,employeeNumber,lastName,firstName
FROM employees WHERE firstNAme LIKE '5%';
   
SELECT *
FROM employees
order by lastName;


select * 
from employees
where jobTitle = 'Sales Rep'
order by employeeNumber
desc;

select officeCode, COUNT(employeeNumber)
from employees
group by officeCode;

use classicmodels;

select reportsTo, COUNT(reportsTo)
from employees
group by reportsTo;

select JobTitle, COUNT(JobTitle)
from employees 
group by JobTitle
order by 2 desc;

select round(8.5);


select upper(lastName),lower(firstName)
from employees;

select  upper(lastName)+' '+ upper(firstName)
from employees;

select now();
select current_date(), curdate();
select current_time();


SELECT firstName,
	CASE officeCode
	WHEN 1 THEN 'piso1'
	WHEN 2 THEN 'piso2'
	WHEN 3 THEN 'piso3'
	ELSE 'PLANTA BAJA'
END as 'ubicacion'
from employees
order by 2;

select *
from products;
	  
select * ,
	CASE  
	when quantityInStock < 1000 then 'uge pedir'
    when quantityInStock > 1000 && quantityInStock < 2000 then 'realizar pepido pronto'
    when quantityInStock > 2000 then 'aun aguanta'
    END
from products ;
 
 
 select * from employees
 inner join offices
 on rmployees.officeCode = offices.officeCode;
 
 select = from employees e
 inner join offices 
 