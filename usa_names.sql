--1. How many rows are in the names table?
SELECT COUNT(*)
FROM names;
--Ans: 1,957,046

--2. How many total registered people appear in the dataset?
SELECT SUM(num_registered)
FROM names;
--Ans: 351,653,025

--3. Which name had the most appearances in a single year in the dataset?
SELECT name, num_registered, year
FROM names
ORDER BY num_registered DESC
--Ans: Linda, 1947

--4. What range of years are included?
SELECT MIN(year), MAX(year)
FROM names;
--Ans: 1880-2018

--5. What year has the largest number of registrations?
SELECT year, SUM(num_registered)
FROM names
GROUP BY year
ORDER BY sum DESC;
--Ans: 1957

--6. How many different (distinct) names are contained in the dataset?
SELECT COUNT(DISTINCT name)
FROM names;

--Ans: 98,400

--7. Are there more males or more females registered?
SELECT SUM(num_registered), gender
FROM names
GROUP BY GENDER;
--Ans: There are more males registered than females.

--8. What are the most popular male and female names overall (i.e., the most total registrations)?
SELECT SUM(num_registered), name, gender
FROM names
GROUP BY name, gender
ORDER BY sum DESC;
--Ans: James and Mary

--9. What are the most popular boy and girl names of the first decade of the 2000s (2000 - 2009)?
SELECT SUM(num_registered), name, gender
FROM names
WHERE year > 1999 AND year < 2010
GROUP BY name, gender
ORDER BY sum DESC;
--Ans: Jacob and Emily

--10. Which year had the most variety in names (i.e. had the most distinct names)?
SELECT COUNT (DISTINCT name), year
FROM names
GROUP BY year
ORDER BY count DESC;
--Ans: 2008

--11. What is the most popular name for a girl that starts with the letter X?
SELECT name, SUM(num_registered)
FROM names
WHERE name LIKE 'X%' AND gender = 'F'
GROUP BY name
ORDER BY sum DESC;
--Ans: Ximena

--12. How many distinct names appear that start with a 'Q', but whose second letter is not 'u'?
SELECT COUNT(DISTINCT name)
FROM names
WHERE name LIKE 'Q%' AND name NOT LIKE 'Qu%';
--Ans: 46

--13. Which is the more popular spelling between "Stephen" and "Steven"? Use a single query to answer this question.
SELECT name, SUM(num_registered)
FROM names
WHERE name = 'Stephen' OR name = 'Steven'
GROUP BY name;
--Ans: Steven

--14. What percentage of names are "unisex" - that is what percentage of names have been used both for boys and for girls?
SELECT name, SUM(num_registered)
FROM names
GROUP BY name
HAVING COUNT(DISTINCT gender) = 2;
SELECT COUNT(DISTINCT name)
FROM names;
SELECT 10773./98400;
--Ans: 11% 

--15. How many names have made an appearance in every single year since 1880?
SELECT DISTINCT name
FROM names
GROUP BY name
HAVING COUNT(DISTINCT year) = 139;
--Ans: 921

--16. How many names have only appeared in one year?
SELECT name
FROM names
GROUP BY name
HAVING COUNT(DISTINCT year) = 1;
--Ans: 21,123

--17. How many names only appeared in the 1950s?
SELECT name, MIN(year), MAX(year)
FROM names
GROUP BY name
HAVING MIN(year) >= 1950 AND MAX(year) <= 1959
--Ans: 661

--18. How many names made their first appearance in the 2010s?
SELECT COUNT(DISTINCT name)
FROM names
GROUP BY year
HAVING year >= 2010
--Ans:
11,270

--19. Find the names that have not be used in the longest.
SELECT name, MAX(year)
FROM names
GROUP BY name
ORDER BY MAX(year);
--Ans: Roll and Zilpah

--20. Come up with a question that you would like to answer using this dataset. Then write a query to answer this question.
--What's the longest name in the dataset?
SELECT name, LENGTH(name)
FROM names
GROUP BY name
ORDER BY MAX(LENGTH(name)) DESC;
--Ans: There are 36 names tied for longest with 15 characters, however, 
--the first name that does not appear to be a compound name is Oluwafifehanmi, with 14 characters.

SELECT *
FROM names
LIMIT 5;