---
# SQL Queries Collection

This repository contains a collection of basic and intermediate SQL queries that demonstrate various operations such as selecting, filtering, joining, and aggregating data from relational tables. These queries are written with a focus on the `CITY`, `STATION`, `EMPLOYEE`, and `COUNTRY` tables.

## Table of Contents

1. [Fetch All Details from CITY](#1-fetch-all-details-from-city)
2. [Fetch Details by ID](#2-fetch-details-by-id)
3. [List All Employee Names](#3-list-all-employee-names)
4. [Filter Japanese Cities](#4-filter-japanese-cities)
5. [List of City and State](#5-list-of-city-and-state)
6. [Cities with Even ID Numbers](#6-cities-with-even-id-numbers)
7. [Difference Between Total and Distinct Cities](#7-difference-between-total-and-distinct-cities)
8. [Shortest and Longest City Names](#8-shortest-and-longest-city-names)
9. [Average City Population (Rounded Down)](#9-average-city-population-rounded-down)
10. [Average Population by Continent](#10-average-population-by-continent)


## 1. Fetch All Details from CITY

```sql
SELECT * FROM CITY;
````

## 2. Fetch Details by ID

```sql
SELECT * FROM CITY WHERE ID = 1661;
```

## 3. List All Employee Names

```sql
SELECT name FROM Employee ORDER BY name;
```

## 4. Filter Japanese Cities

```sql
SELECT * FROM CITY WHERE COUNTRYCODE = 'JPN';
```

## 5. List of City and State

```sql
SELECT CITY, STATE FROM STATION;
```

## 6. Cities with Even ID Numbers

```sql
SELECT DISTINCT CITY FROM STATION WHERE MOD(ID, 2) = 0;
```

## 7. Difference Between Total and Distinct Cities

```sql
SELECT COUNT(CITY) - COUNT(DISTINCT CITY) FROM STATION;
```

## 8. Shortest and Longest City Names

**Shortest:**

```sql
SELECT CITY, LENGTH(CITY) FROM STATION 
ORDER BY LENGTH(CITY), CITY 
FETCH FIRST 1 ROWS ONLY;
```

**Longest:**

```sql
SELECT CITY, LENGTH(CITY) FROM STATION 
ORDER BY LENGTH(CITY) DESC, CITY 
FETCH FIRST 1 ROWS ONLY;
```

## 9. Average City Population (Rounded Down)

```sql
SELECT FLOOR(AVG(POPULATION)) FROM CITY;
```

## 10. Average Population by Continent

```sql
SELECT COUNTRY.CONTINENT, FLOOR(AVG(CITY.POPULATION)) AS AVERAGE_POPULATION
FROM CITY
JOIN COUNTRY ON CITY.COUNTRYCODE = COUNTRY.CODE
GROUP BY COUNTRY.CONTINENT;
```
