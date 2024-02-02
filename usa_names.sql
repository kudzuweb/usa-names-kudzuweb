--1. How many rows are in the names table?
SELECT COUNT(*)
FROM names;
--Ans: 1957046

--2. How many total registered people appear in the dataset?
SELECT SUM(num_registered)
FROM names;
--Ans: 351653025

--3. Which name had the most appearances in a single year in the dataset?
SELECT name, num_registered, year
FROM names
ORDER BY num_registered DESC
--Ans: Linda, 1947

--4. What range of years are included?
SELECT MIN(year)
FROM names;

SELECT MAX(year)
FROM names;
--Ans: 1880-2018

--5. What year has the largest number of registrations?
SELECT year, num_registered
FROM names
ORDER BY num_registered DESC;
--Ans: 1947

--6. How many different (distinct) names are contained in the dataset?
SELECT COUNT(DISTINCT name)
FROM names;

--Ans: 98400

--7. Are there more males or more females registered?
SELECT COUNT(gender)
FROM names
GROUP BY gender;
SELECT COUNT(gender)
FROM names
WHERE gender = 'M';

--Ans: There are more females registered than males.

--8. What are the most popular male and female names overall (i.e., the most total registrations)?
SELECT SUM(num_registered), name, gender
FROM names
GROUP BY name, gender
ORDER BY sum DESC;
--Ans: James and Mary

--9. What are the most popular boy and girl names of the first decade of the 2000s (2000 - 2009)?

--Ans:

--10. Which year had the most variety in names (i.e. had the most distinct names)?

--Ans:

--11. What is the most popular name for a girl that starts with the letter X?

--Ans:

--12. How many distinct names appear that start with a 'Q', but whose second letter is not 'u'?

--Ans:

--13. Which is the more popular spelling between "Stephen" and "Steven"? Use a single query to answer this question.

--Ans:

--14. What percentage of names are "unisex" - that is what percentage of names have been used both for boys and for girls?

--Ans:

--15. How many names have made an appearance in every single year since 1880?

--Ans:

--16. How many names have only appeared in one year?

--Ans:

--17. How many names only appeared in the 1950s?

--Ans:

--18. How many names made their first appearance in the 2010s?

--Ans:

--19. Find the names that have not be used in the longest.

--Ans:

--20. Come up with a question that you would like to answer using this dataset. Then write a query to answer this question.

--Ans:

SELECT *
FROM names
LIMIT 5;