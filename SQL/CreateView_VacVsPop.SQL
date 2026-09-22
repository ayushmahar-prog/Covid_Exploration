-- Create View to store data for later Visualizations

CREATE VIEW "CovidExp"."PercentPopulationVaccinated" AS
SELECT dea.continent, dea.location, dea.date, dea.population, vac.new_vaccinations,
    SUM(CAST(vac.new_vaccinations AS INT)) OVER (PARTITION BY dea.location ORDER BY dea.location, dea.date) AS RollingPeopleVaccinated
FROM "CovidExp"."CovidDeaths" dea
JOIN "CovidExp"."CovidVaccinations" vac
    ON dea.location = vac.location
    AND dea.date = vac.date
WHERE dea.continent IS NOT NULL;