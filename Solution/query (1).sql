SELECT *
FROM property24_table
LIMIT 10;

--1. Display all properties in the database.
SELECT *
    FROM property24_table;

--Show only the CITY, PROVINCE, and PROPERTY_PRICE columns.
SELECT CITY, PROVINCE, PROPERTY_PRICE
FROM property24_table;

--List all distinct provinces in the table.
SELECT DISTINCT PROVINCE
FROM property24_table;

--4. Find all properties located in Gauteng.
SELECT *
FROM property24_table
WHERE PROVINCE = 'Gauteng';

--5. Show properties priced under R1,500,000.
SELECT *
FROM property24_table
WHERE PROPERTY_PRICE < 15000000;

--6. List properties with more than 3 bedrooms.
SELECT *
FROM property24_table
WHERE BEDROOMS > 3;

--7. Find properties with parking for at least 2 cars.
SELECT *
FROM property24_table
WHERE PARKING >= 2;

--8. Show properties where the monthly repayment is greater than R25,000.
SELECT *
FROM property24_table
WHERE MONTHLY_REPAYMENT > 25000;

--9. Show all properties ordered by property price from highest to lowest.
SELECT *
FROM property24_table
ORDER BY PROPERTY_PRICE DESC;

--10. List properties ordered by floor size from smallest to largest.
SELECT *
FROM property24_table
ORDER BY FLOOR_SIZE ASC;

--11. Show Gauteng properties ordered by monthly repayment.
SELECT *
FROM property24_table
WHERE PROVINCE = 'Gauteng'
ORDER BY MONTHLY_REPAYMENT ASC;

--12. Find Western Cape properties priced below R3,000,000.
SELECT *
FROM property24_table
WHERE PROVINCE = 'Western Cape' AND PROPERTY_PRICE < 3000000;

--13. Show KwaZulu-Natal properties with 3 or more bedrooms.
SELECT *
FROM property24_table
WHERE PROVINCE = 'KwaZulu-Natal' AND BEDROOMS >= 3;

--14. Find properties in Limpopo or Free State ordered by property price.
SELECT *
FROM property24_table
WHERE PROVINCE IN ('Limpopo', 'Free State')
ORDER BY PROPERTY_PRICE;

--15. Show the 10 most expensive properties.
SELECT *
FROM property24_table
ORDER BY PROPERTY_PRICE DESC
LIMIT 10;

--16. Show the 5 cheapest properties.
SELECT *
FROM property24_table
ORDER BY PROPERTY_PRICE ASC
LIMIT 5;

--17. Show the top 10 properties with the largest floor size.
SELECT *
FROM property24_table
ORDER BY FLOOR_SIZE DESC
LIMIT 10;

--18. Which province appears to have the highest priced properties?
SELECT PROVINCE, AVG(PROPERTY_PRICE) AS AVG_PRICE
FROM property24_table
GROUP BY PROVINCE
ORDER BY AVG_PRICE DESC
LIMIT 1;

--19. Which cities appear to have the most affordable housing?
SELECT CITY, AVG(PROPERTY_PRICE) AS AVG_PRICE
FROM property24_table
GROUP BY CITY
ORDER BY AVG_PRICE ASC
LIMIT 5;
--20. What minimum income is typically required for properties priced above R4,000,000?
SELECT MIN(Min_Gross_Monthly_Income)
FROM property24_table
WHERE PROPERTY_PRICE > 4000000;
