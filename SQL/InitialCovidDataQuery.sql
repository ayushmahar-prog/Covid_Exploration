-- Select Data that we are going to be starting with

Select Location, date, total_cases, new_cases, total_deaths, population
FROM "CovidExp"."CovidDeaths"
Where continent is not null 
order by 1,2