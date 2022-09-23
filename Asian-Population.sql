/*Given the CITY and COUNTRY tables, query the sum of the populations of all cities where the CONTINENT is 'Asia'.

Note: CITY.CountryCode and COUNTRY.Code are matching key columns.*/

SELECT SUM(City.Population)
FROM City
    INNER JOIN Country
        ON City.COUNTRYCODE = Country.Code
WHERE Country.Continent = 'Asia';
