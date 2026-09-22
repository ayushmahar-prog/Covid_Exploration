-- Creates a view that displays the percentage of people vaccinated in a population which joins the two tables coviddeaths and covidvaccinations
CREATE VIEW "CovidExp"."PercentPopulationVaccinatedJoin" AS
SELECT dea.continent, dea.location, dea.date, dea.population, vac.new_vaccinations,
    SUM(CAST(vac.new_vaccinations AS INT)) OVER (PARTITION BY dea.location ORDER BY dea.location, dea.date) AS RollingPeopleVaccinated,
    (SUM(CAST(vac.new_vaccinations AS INT)) OVER (PARTITION BY dea.location ORDER BY dea.location, dea.date)::float / dea.population) * 100 AS Percentage_Vac_Vs_Pop
FROM  "CovidExp"."CovidDeaths" dea
JOIN  "CovidExp"."CovidVaccinations" vac
    ON dea.location = vac.location
    AND dea.date = vac.date
WHERE 
    dea.continent IS NOT NULL;