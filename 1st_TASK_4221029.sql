SELECT * 
FROM classicmodels.customers
WHERE creditLimit >= '100000'AND customerNumber <200 OR country ="USA";

SELECT *,  creditLimit+2000 new_credit 
FROM customers
ORDER BY new_credit DESC;

SELECT *
FROM customers
ORDER BY creditLimit DESC
LIMIT 3;