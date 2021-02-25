---drop table "Renew"."WindandSolar_Summary";
insert into "Renew"."WindandSolar_Summary" --insert wind
(SELECT 
year, 
month,
month||'/1/'||year Date_data,
us.state_abv,
us.state, 
'Wind' as type,
'Industrial' as COM_Type,
sum(coalesce(coalesce(u.ind_cap_wind,0),0))+ sum(coalesce(coalesce(u.ind_cust_wind,0),0)) as total  
FROM "Renew"."Util_Energy" U,
"Renew"."USPopulation" US
where u.state=us.state_abv
group by year, 
month,
month||'/1/'||year,
us.state_abv,
us.state)
union
(SELECT 
year, 
month,
month||'/1/'||year Date_data,
us.state_abv,
us.state, 
'Wind' as type,
'Commercial' as COM_Type,
sum(coalesce(coalesce(u.com_cap_wind,0),0))+ sum(coalesce(coalesce(u.com_cust_wind,0),0)) as total  
FROM "Renew"."Util_Energy" U,
"Renew"."USPopulation" US
where u.state=us.state_abv
group by year, 
month,
month||'/1/'||year,
us.state_abv,
us.state)
union
(SELECT 
year, 
month,
month||'/1/'||year Date_data,
us.state_abv,
us.state, 
'Wind' as type,
'Residential' as COM_Type,
sum(coalesce(coalesce(u.res_cap_wind,0),0))+ sum(coalesce(coalesce(u.res_cust_wind,0),0)) as total  
FROM "Renew"."Util_Energy" U,
"Renew"."USPopulation" US
where u.state=us.state_abv
group by year, 
month,
month||'/1/'||year,
us.state_abv,
us.state)
union
(SELECT 
year, 
month,
month||'/1/'||year Date_data,
us.state_abv,
us.state, 
'Wind' as type,
'Transportation' as COM_Type,
sum(coalesce(coalesce(u.tran_cap_wind,0),0))+ sum(coalesce(coalesce(u.tran_cust_wind,0),0)) as total  
FROM "Renew"."Util_Energy" U,
"Renew"."USPopulation" US
where u.state=us.state_abv
group by year, 
month,
month||'/1/'||year,
us.state_abv,
us.state)
union
(SELECT 
year, 
month,
month||'/1/'||year Date_data,
us.state_abv,
us.state, 
'Wind' as type,
'Total' as COM_Type,
sum(coalesce(coalesce(u.total_cap_wind,0),0))+ sum(coalesce(coalesce(u.total_cust_wind,0),0)) as total  
FROM "Renew"."Util_Energy" U,
"Renew"."USPopulation" US
where u.state=us.state_abv
group by year, 
month,
month||'/1/'||year,
us.state_abv,
us.state);


commit;


