(select state, type, sum(total) total from
(SELECT state,'USE Photo' as type, (coalesce(total_cust_photo,0)) as total
FROM "Renew"."Util_Energy"--3
union 
SELECT state, 'USE Wind' as type, (coalesce(total_cust_wind,0)) as ind_cust_wind
FROM "Renew"."Util_Energy"--10
union
SELECT state_abv, 'POP', (coalesce(pop_count,0)) as total
FROM "Renew"."USPopulation"
 union
select state_abv, 'POT Solar'as type, (coalesce(solar_cnt,0)) as total
FROM "Renew"."SolarPotential"
union 
SELECT 
st, 
'POT Wind' as Type,
sum( (coalesce(ann_50metercapmw,0))+
(coalesce(ann_80meter30gengwh,0)) +
(coalesce(ann_80meter30capmw,0)) +
(coalesce(ann_80meter35gengwh,0)) +
(coalesce(ann_80meter35capmw,0)) +
(coalesce(ann_80meter40gengwh,0)) +
(coalesce(ann_80meter40capmw,0)) +
(coalesce(ann_100meter30gengwh,0)) + 
(coalesce(ann_100meter30capmw,0)) + 
(coalesce(ann_100meter35gengwh,0)) +
(coalesce(ann_100meter35capmw,0)) +
(coalesce(ann_100meter40gengwh,0)) +  
(coalesce(ann_100meter40capmw,0)) + 
(coalesce(ann_offshore_potgengwh,0)) +
(coalesce(ann_offshorepotcapmw,0)) +
(coalesce(ann_gen_gwh,0)))
	FROM "Renew"."Wind_Potential"
	group by st,type) a
group by state, type
having sum(total)>0) 