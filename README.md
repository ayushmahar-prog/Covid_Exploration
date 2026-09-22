# Covid Exploration Project

## Overview

This Project is aimed at exploring and analyzing COVID-19 data through various SQL techniques, including joins, Common Table Expressions (CTEs), temporary tables, window functions, aggregate functions, creating views, and data type conversions. The queries handle tasks such as filtering, sorting, and calculating essential metrics related to COVID-19 cases, deaths, and vaccination rates across different locations and time periods. The initial queries extract and display fundamental data from the 'CovidDeaths' table, while subsequent queries perform more complex analyses, such as determining the likelihood of dying from COVID-19 in various countries and the percentage of the population infected.

Additionally, the script includes queries to identify countries with the highest infection and death rates relative to their populations and to compare death counts across continents. It leverages advanced SQL features like window functions to compute rolling sums of vaccinations, as well as CTEs and temporary tables for intermediate calculations. The creation of a view to store vaccination data aids in future visualizations. This comprehensive approach ensures a thorough exploration and understanding of the COVID-19 dataset, allowing for the extraction of meaningful insights for further analysis and reporting.


## Features

- **SQL Techniques**: Utilizes joins, Common Table Expressions (CTEs), temporary tables, window functions, aggregate functions, creating views, and data type conversions.
- **Data Analysis**: Queries to identify infection and death rates, likelihood of death from COVID-19, and comparison of death counts across continents.
- **Advanced SQL Features**: Includes rolling sums of vaccinations, intermediate calculations using CTEs and temporary tables, and creation of views for future visualizations.

## Project Structure

- **CsvData**: Contains CSV files with COVID-19 data.
- **Python**: Includes Python scripts for additional data processing and analysis.
- **Query Results**: Stores results of executed SQL queries.
- **SQL**: Contains SQL scripts used for data exploration.

## Project Insights

- **Conclusion**:
  - The Analysis of Global Numbers of Infection from SARS-CoV-2 shows that out 775 million cases world wide 7 million resulted in death resulting in a .91% fatality rate. This could be due to the fact that this analysis was done after Covid had been studied and vaccines were created resulting in a plateu in the number of deaths.

  - The Analysis of Total Deaths per Continent shows that Europe lead the World with the most Covid Deaths by nearly 400 thousand. This could be due to the high levels of travel between the countries in the continent.
 
  - The Analysis of Percent Population Infected shows that there was a gradual and consitent spike in Infections in 2021 and a much stepper raise in infections in 2022.  This could reflect the impact of initial waves of the pandemic and subsequent measures to control it.
 
  - The Analysis of Percent Population infected per country shows that regions with like Africa or South America had a lower Infection rate compared to Regions like North America and Europe. This could be from lack of data during the beginning of Covid.
 
    
- **Dashboard**:
  [Covid Visualization Dashboard](https://public.tableau.com/app/profile/alexander.harris7255/viz/Covid_Visualization_17240932164130/Dashboard1?publish=yes)


## Acknowledgements

- **The inspiration for this project lies in the hands of AlexTheAnalyst on youtube and his course on Data Analytics.**
- **Data was gathered from https://ourworldindata.org/covid-deaths.**


## License
This project is licensed under the MIT License.
