-- Total Cases vs Total Deaths
-- Shows likelihood of dying if you contract covid in North America

Select Location, date, total_cases,total_deaths, (total_deaths/total_cases)*100 as DeathPercentage
FROM "CovidExp"."CovidDeaths"
Where location = 'North America'
AND total_deaths is not null
order by deathpercentage DESC