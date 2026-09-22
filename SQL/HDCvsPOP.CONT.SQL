-- Showing contintents with the highest death count per population

Select continent, MAX(cast(Total_deaths as int)) as TotalDeathCount
FROM "CovidExp"."CovidDeaths"
--Where location = 'North America'
Where continent is not null 
Group by continent
order by TotalDeathCount desc