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

