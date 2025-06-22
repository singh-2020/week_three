--1. SQL Quey to fetch all details
SELECT * FROM CITY;

--2. SQL query to fetch details by ID
SELECT * FROM CITY WHERE ID = 1661;

--3. SQL Query to list all employess names
SELECT name FROM Employee ORDER BY name;

--4.Query to filter Japanese City
SELECT * FROM CITY WHERE COUNTRYCODE = 'JPN';

--5.SQL Query to list of city and state
SELECT CITY,STATE FROM STATION;

--6.Query a list of CITY names from STATION for cities that have an even ID number
SELECT DISTINCT CITY FROM STATION WHERE MOD(ID,2) =0;

--7.Find the difference between the total number of CITY entries in the table and the number of distinct CITY entries in the table.
SELECT COUNT(CITY) - COUNT(DISTINCT CITY) FROM STATION;

--8.Query the two cities in STATION with the shortest and longest CITY names, as well as their respective lengths
SELECT CITY, LENGTH(CITY) FROM STATION 
ORDER BY LENGTH(CITY), CITY FETCH FIRST 1 ROWS ONLY;

SELECT CITY, LENGTH(CITY) FROM STATION 
ORDER BY LENGTH(CITY) DESC, CITY FETCH FIRST 1 ROWS ONLY;


--9. Query the average population for all cities in CITY, rounded down to the nearest integer.
SELECT FLOOR(AVG(POPULATION)) FROM CITY;

--10.