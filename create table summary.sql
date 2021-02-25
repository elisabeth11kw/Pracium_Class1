drop table "Renew"."WindandSolar_Summary";
create table "Renew"."WindandSolar_Summary" as
(SELECT 
year, 
month,
month||'/1/'||year Date_data,
us.state_abv,
us.state, 
'Photo' as type,
'Industrial' as COM_Type,
sum(coalesce(coalesce(u.ind_cap_photo,0),0))+ sum(coalesce(coalesce(u.ind_cust_photo,0),0)) as total  
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
'Photo' as type,
'Commercial' as COM_Type,
sum(coalesce(coalesce(u.com_cap_phot,0),0))+ sum(coalesce(coalesce(u.com_cust_photo,0),0)) as total  
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
'Photo' as type,
'Residential' as COM_Type,
sum(coalesce(coalesce(u.res_cap_photo,0),0))+ sum(coalesce(coalesce(u.res_cust_photo,0),0)) as total  
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
'Photo' as type,
'Transportation' as COM_Type,
sum(coalesce(coalesce(u.trans_cap_photo,0),0))+ sum(coalesce(coalesce(u.trans_cust_photo,0),0)) as total  
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
'Photo' as type,
'Total' as COM_Type,
sum(coalesce(coalesce(u.total_cap_photo,0),0))+ sum(coalesce(coalesce(u.total_cust_photo,0),0)) as total  
FROM "Renew"."Util_Energy" U,
"Renew"."USPopulation" US
where u.state=us.state_abv
group by year, 
month,
month||'/1/'||year,
us.state_abv,
us.state);



