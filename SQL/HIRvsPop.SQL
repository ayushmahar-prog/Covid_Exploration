-- Countries with Highest Infection Rate compared to Population

Select Location, Population, MAX(total_cases) as HighestInfectionCount,  Max((total_cases/population))*100 as PercentPopulationInfected
FROM "CovidExp"."CovidDeaths"
--Where location = 'North America'
WHERE total_cases is not null
Group by Location, Population
order by PercentPopulationInfected desc