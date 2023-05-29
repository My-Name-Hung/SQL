--BAI 3
-- salary tang len 5%
-- select first_name, last_name, salary, salary * 1.05 as new_salary
-- from employees;

-- sap xep cac gia tri trong cot salary theo cot emplyee_id
-- Select *
-- from employees 
-- order by employee_id, salary;

-- lay gia tri rieng biet( loai cac gia tr trung lap)
-- SELECT DISTINCT job_id, salary
-- from employees
-- order by job_id, salary;

-- liet ke cac dong dau tien co trong bang
-- SELECT DISTINCT job_id, salary
-- from employees
-- order by job_id, salary
-- limit 3 offset 3;  -- bo di 3 gia tri va chi lay gia tri thu 4 cua job_id

---- BT 1a liet ke 5 nhan vien co luong cao nhat
-- SELECT employee_id, first_name, last_name, salary
-- FROM employees
-- ORDER BY salary DESC
-- LIMIT 5;

---- BT 1b liet ke nhan vien co luong cao thu 20
-- SELECT employee_id, first_name, last_name, salary
-- FROM employees
-- ORDER BY salary
-- LIMIT 1 OFFSET 20;


---- BT 2a liet ke nhanh vien co ho la 'Himuro'
-- SELECT employee_id, first_name, last_name
-- FROM employees
-- WHERE last_name = 'Himuro';

---- BT 2b liet ke nhan vein co luong tren 10000 va sap xep giam dan
-- SELECT employee_id, first_name, last_name,salary 
-- FROM employees
-- WHERE salary > 10000
-- ORDER BY salary DESC;



---- BT 3a liet ke nhan vien gia nhap cong ty nam 1997,1998,1999
-- SELECT first_name, last_name, hire_date
-- FROM employees
-- WHERE To_char(hire_date,'yyyy')='1997' OR To_char(hire_date,'yyyy')='1998'
-- OR To_char(hire_date,'yyyy')= '1999';

---- BT 3b ten cua cac nhan vie ket thuc bang 'er'
-- SELECT employee_id, first_name, last_name
-- FROM employees
-- WHERE first_name LIKE '_%er';

---- BT 3c ho cua nhan vien co ki tu 'an'
-- SELECT employee_id, first_name, last_name
-- FROM employees
-- WHERE last_name LIKE '%an%';



---- BT 4a liet ke luong cao nhat va luong thap nhat cua tung phong ban
-- SELECT department_id, MAX(salary) AS LuongCaoNhat, MIN(salary) AS LuongThapNhat
-- FROM employees
-- GROUP BY department_id
-- ORDER BY department_id ASC;

---- BT 4b so luong nhan vien cua tung nguoi quan ly va nguoi quan ly co it nhat 5 nv
-- SELECT manager_id, COUNT(*)
-- FROM employees
-- GROUP BY manager_id
-- HAVING COUNT(*) >= 5
-- ORDER BY manager_id ASC;


---- BT 5a noi 2 bang employees va departments de cho ra ten phong ban va luong tb cua moi phong ban
-- SELECT department_name, ROUND(AVG(salary),2) AS TB_Luong
-- FROM employees e
-- INNER JOIN departments d ON d.department_id = e.department_id
-- GROUP BY department_name
-- ORDER BY tb_luong ASC, department_name;

---- BT 5b noi 2 bang employees va departments liet ke so luong nhan vien cua phong ban va sap xep ket qua theo ten phong ban
-- SELECT e.department_id AS maphongban, d.department_name AS tenphongban, COUNT(*) AS soluong_nv
-- FROM employees e
-- INNER JOIN departments d ON d.department_id = e.department_id
-- GROUP BY e.department_id, d.department_name
-- ORDER BY d.department_name ASC;

----  BT 6 Liệt kê mã, họ, tên, lương của nhân viên và mức chênh lệch lương giữa lương của từng nhân viên và lương trung bình của tất cả nhân viên
---- tim ra so luong tb cua tat ca nv la 8060.0000000000000000
-- SELECT AVG(salary)
-- FROM employees;

--- dua ra ket qua cuoi cung
SELECT employee_id AS ma_nv, first_name AS ho_nv, last_name AS ten_nv,salary AS Luong_nv,
salary - 8060.0000000000000000 AS mucchenhlech
FROM employees
ORDER BY ho_nv ASC;





