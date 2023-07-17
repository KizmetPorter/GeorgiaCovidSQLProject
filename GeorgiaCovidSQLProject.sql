
--Total Covid-19 cases and deaths in GA per county ordered by sex
select county_name, sex, sum(cases) as TotalCases, sum(deaths) as TotalDeaths
from DemographicsBySex
group by sex, county_name;

--Total Covid-19 cases and deaths in GA per sex
select sex, sum(cases) as TotalCases, sum(deaths) as TotalDeaths
from DemographicsBySex
group by sex;

--Total Covid-19 cases and deaths in GA per county ordered by age group
select county_name, age_group, sum(cases) as TotalCases, sum(deaths) as TotalDeaths
from DemographicsByAgeGroup
where county_name <> 'Georgia'
group by age_group, county_name
order by TotalCases desc;

--Total Covid-19 cases and deaths in GA per age group ordered by total cases
select age_group, sum(cases) as TotalCases, sum(deaths) as TotalDeaths
from DemographicsByAgeGroup
where county_name <> 'Georgia'
group by age_group
order by TotalCases desc;

--Total Covid-19 cases and deaths in GA per age group ordered by total deaths
select age_group, sum(cases) as TotalCases, sum(deaths) as TotalDeaths
from DemographicsByAgeGroup
where county_name <> 'Georgia'
group by age_group
order by TotalDeaths desc;

--Total Covid-19 cases and deaths in GA per race ordered by total cases
select county_name, race, sum(cases) as totalcases, sum(deaths) as totaldeaths
from DemographicsByRaceEthnicity
where county_name <> 'Georgia'
group by county_name, race
order by totalcases desc;

--Total Covid-19 cases and deaths in GA per race ordered by total cases
select race, sum(cases) as totalcases, sum(deaths) as totaldeaths
from DemographicsByRaceEthnicity
where county_name <> 'Georgia'
group by race
order by totalcases desc;


--Covid19 cases, hospitalizations and deaths in Georgia per county
select county_name, population, cases, confirmed_case_hospitalization as hospitalizations, deaths
from CountyCases
order by county_name;

