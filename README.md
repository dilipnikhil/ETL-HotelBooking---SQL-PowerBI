# ETL and DataVisualization of Hotel Booking Data using SSMS (SQL), Visual Studio and Power BI

This project gives you an diea about how to cretea simple workflow in SSIS to perform ETL operations 
using VS Code and SSMS and create interactive dashboards using Power BI.

## Description

### Data : Three years of hotel booking data (2018,2019,2020).
Problem Statement - Perform ETL and creaet interactive PowerBI dashboards to find business oppurtnites and also find patterns and trends in the data.

## Getting Started

### Dependencies

* VS Code, SSMS, SSIS integration, SQL knowledge, Microsoft Power BI and MS office.

### Installing

* You can download individual softwares from their official websites.

### Steps
* Create a simple dataflow in VSCODE using SSIS.

![SSIS WorkFlow](https://user-images.githubusercontent.com/56465352/138596832-95aadd70-8885-41ca-b41e-708d909b8122.JPG)


* Before you can load the data into the server, You will have to create an SQL database in SSMS with columns with their respective data types.

* Load the dataset from a CSV file and then applying the transformation before you load the dataset into the warehouse.

* Apply the transformations. 

```
with hotels as (
select * from dbo.['2018$']
UNION ALL
select * from dbo.['2019$']
UNION ALL
select * from dbo.['2020$'])


select * from hotels as h
left join dbo.market_segment$  as m
on h.market_segment = m.market_segment
left join dbo.meal_cost$ as ml
on h.meal = ml.meal

```
* Create New columns or analyse data as required.

```
select 
arrival_date_year,
hotel,
round(sum((stays_in_weekend_nights + stays_in_week_nights) * adr),2) AS Revenue 
from hotels


GROUP BY arrival_date_year,hotel
order by hotel
```

* Load the data into the server

*Once the data is Loaded, fire up Microsoft powerBI and connect to the database.

![Power Bi connect](https://user-images.githubusercontent.com/56465352/138596863-472e0c65-3b2a-490a-aad2-653f038f2934.JPG)

* Create beautiful charts and dashbooards as shown below and analyse trends and patterns to find business oppurtinites and find solutions for the problem statement

![1](https://user-images.githubusercontent.com/56465352/138597018-58cd6c23-9d66-4844-a68a-1d865f31dea1.JPG)

![3](https://user-images.githubusercontent.com/56465352/138597025-0d6472c6-4c13-4679-9474-e6dc5293c116.JPG)

![4](https://user-images.githubusercontent.com/56465352/138597034-e2e1d0a2-6ee4-4044-aba9-8e6ee32a7eb4.JPG)

![2](https://user-images.githubusercontent.com/56465352/138597037-ad3c24af-20b5-40cf-ac1b-f3dc64619ddc.JPG)

![5](https://user-images.githubusercontent.com/56465352/138597050-d5138ad0-8a45-408e-98e0-0689c0d8fe64.JPG)

![6](https://user-images.githubusercontent.com/56465352/138597058-7e8357c8-c54b-450a-9596-f354a6df1c9c.JPG)

## Authors

Dilip Nikhil 

## Version History

* 0.1
    * Initial Release

## License

This project is licensed under the MIT License - see the LICENSE.md file for details






