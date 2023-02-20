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




-- regexp or regular expression is used to match a specific part in the text even its exist or not 
SELECT *
FROM customers
WHERE contactFirstName REGEXP "^[jl]e";

SELECT * 
FROM customers
WHERE contactFirstName REGEXP "el$|ie";

SELECT *
FROM customers
WHERE contactFirstName REGEXP "b[ga]";