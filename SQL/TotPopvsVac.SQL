-- Total Population vs Vaccinations

Select dea.continent, dea.location, dea.date, dea.population, vac.new_vaccinations
From "CovidExp"."CovidDeaths" dea
Join "CovidExp"."CovidVaccinations" vac
	On dea.location = vac.location
	and dea.date = vac.date
where dea.continent is not null 
order by 2,3