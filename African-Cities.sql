--Given the CITY and COUNTRY tables, query the names of all cities where the CONTINENT is 'Africa'.--
--Note: CITY.CountryCode and COUNTRY.Code are matching key columns.--

SELECT c.name
FROM city c,
     country ct
WHERE c.countrycode = ct.code
      AND ct.continent = 'Africa';
