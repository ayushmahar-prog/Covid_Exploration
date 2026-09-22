-- Shows Percentage of Population that has recieved a Covid Vaccine

WITH popvsvac (continent,location,date,population,new_vaccinations, rollingpeoplevaccinated)
as
(
Select dea.continent, dea.location, dea.date, dea.population, vac.new_vaccinations
, SUM (CAST(vac.new_vaccinations as int)) OVER (PARTITION BY dea.location ORDER BY 
dea.date) as RollingPeaopleVaccinated
--	, (RollingPeopleVaccinated/population)*100
From "CovidExp"."CovidDeaths" dea
Join "CovidExp"."CovidVaccinations" vac
	On dea.location = vac.location
	and dea.date = vac.date
where dea.continent is not null 
--order by 2,3
)
Select *, (CAST(RollingPeopleVaccinated AS double precision)/ population)*100 as Percentage_vaccinated
from popvsvac 
WHERE new_vaccinations is not null