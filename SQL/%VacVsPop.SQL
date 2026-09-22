SELECT continent, location, date, population,  new_vaccinations, MAX(rollingpeoplevaccinated) AS MaxRollingPeopleVaccinated, percentage_vac_vs_pop
FROM "CovidExp"."PercentPopulationVaccinated"
WHERE new_vaccinations IS NOT NULL
AND percentage_vac_vs_pop > 0.0001  
GROUP BY continent, location, date, population, new_vaccinations, percentage_vac_vs_pop
ORDER BY 
    1,2,3