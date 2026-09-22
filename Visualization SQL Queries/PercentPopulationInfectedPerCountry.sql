-- 3. Percent Population Infected Per Country 

Select Location, Population, MAX(total_cases) as HighestInfectionCount,  Max((total_cases/population))*100 as PercentPopulationInfected
From "CovidExp"."CovidDeaths"
--Where location like '%states%'
Group by Location, Population
order by PercentPopulationInfected desc
