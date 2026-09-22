-- GLOBAL NUMBERS

Select SUM(new_cases) as total_cases, SUM(cast(new_deaths as int)) as total_deaths, SUM(cast(new_deaths as int))/SUM(New_Cases)*100 as DeathPercentage
FROM "CovidExp"."CovidDeaths"
--Where location = 'North America'
where continent is not null 
--Group By date
order by 1,2