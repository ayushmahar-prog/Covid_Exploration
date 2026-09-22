-- 4. Percent Population Infected


Select Location, Population,date, MAX(total_cases) as HighestInfectionCount,  Max((total_cases/population))*100 as PercentPopulationInfected
From "CovidExp"."CovidDeaths"
--Where location like '%states%'
Group by Location, Population, date
order by PercentPopulationInfected desc