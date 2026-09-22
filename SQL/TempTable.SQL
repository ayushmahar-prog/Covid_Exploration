-- Drop the temporary table if it exists
DROP TABLE IF EXISTS PercentPopulationVaccinated;

-- Using Temp Table to perform Calculation on Partition By in previous query
CREATE TEMP TABLE PercentPopulationVaccinated
(
    Continent VARCHAR(255),
    Location VARCHAR(255),
    Date DATE,
    Population NUMERIC,
    New_vaccinations NUMERIC,
    RollingPeopleVaccinated NUMERIC
);

INSERT INTO PercentPopulationVaccinated
SELECT dea.continent, dea.location, dea.date::DATE, dea.population, vac.new_vaccinations,
    SUM(COALESCE(vac.new_vaccinations, 0)::int) 
    OVER (PARTITION BY dea.location ORDER BY dea.date) AS RollingPeopleVaccinated
FROM "CovidExp"."CovidDeaths" dea
JOIN "CovidExp"."CovidVaccinations" vac
    ON dea.location = vac.location
    AND dea.date = vac.date
WHERE dea.continent IS NOT NULL;

SELECT Continent, Location, Date, Population, New_vaccinations, RollingPeopleVaccinated,
    (RollingPeopleVaccinated::float / Population) * 100 AS Percentage_vaccinated
FROM PercentPopulationVaccinated
WHERE New_vaccinations IS NOT NULL
ORDER BY 1,2,5

-- Drop the temp table after use
DROP TABLE PercentPopulationVaccinated;