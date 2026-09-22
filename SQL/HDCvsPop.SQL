-- Countries with Highest Death Count per Population

SELECT Location, MAX(CAST(Total_deaths AS int)) AS TotalDeathCount
FROM "CovidExp"."CovidDeaths"
WHERE Total_deaths IS NOT NULL
  AND Location NOT IN ('World', 'high income', 'Upper Middle income', 'Europe', 'North America', 'Asia', 'South America', 'Lower Middle Income', 'European Union')
GROUP BY Location
ORDER BY TotalDeathCount DESC;
