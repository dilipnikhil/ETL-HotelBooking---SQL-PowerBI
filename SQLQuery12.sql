/*select 
arrival_date_year,
hotel,
round(sum((stays_in_weekend_nights + stays_in_week_nights) * adr),2) AS Revenue 
from hotels
GROUP BY arrival_date_year,hotel
order by hotel