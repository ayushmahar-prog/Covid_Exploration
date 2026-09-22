-- Total Cases vs Population
-- Shows what percentage of population infected with Covid

Select Location, date, Population, total_cases,  (total_cases/population)*100 as PercentPopulationInfected
FROM "CovidExp"."CovidDeaths"
Where location = 'North America'
AND total_cases is not null
order by 3,4