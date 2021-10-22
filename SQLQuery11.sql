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

