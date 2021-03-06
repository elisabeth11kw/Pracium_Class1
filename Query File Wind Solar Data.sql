SELECT year, 
month, 
state, 
--util_num, 
--util_name, 
--status, 
--type, 
sum(coalesce(res_cap_photo,0)) as res_cap_photo,
sum(coalesce(com_cap_phot,0)) as com_cap_phot,
sum(coalesce(ind_cap_photo,0)) as ind_cap_photo,
sum(coalesce(trans_cap_photo,0)) as trans_cap_photo,
sum(coalesce(total_cap_photo,0))  as total_cap_photo,
sum(coalesce(res_cust_photo,0)) as res_cust_photo,
sum(coalesce(com_cust_photo,0))  as com_cust_photo,
sum(coalesce(ind_cust_photo,0)) as ind_cust_photo,
sum(coalesce(trans_cust_photo,0))  as trans_cust_photo,
sum(coalesce(total_cust_photo,0))  as total_cust_photo,
sum(coalesce(res_stor_cap_photo,0))  as res_stor_cap_photo,
sum(coalesce(com_stor_cap_photo,0))  as com_stor_cap_photo,
sum(coalesce(ind_stor_cap_photo,0))  as ind_stor_cap_photo,
sum(coalesce(trans_stor_cap_phot,0))  as trans_stor_cap_phot,
sum(coalesce(total_stor_cap_photo,0))  as total_stor_cap_photo,
sum(coalesce(res_stor_cust_photo,0)) as res_stor_cust_photo,
sum(coalesce(com_stor_cust_photo,0)) as com_stor_cust_photo,
sum(coalesce(ind_stor_cust_photo,0)) as ind_stor_cust_photo,
sum(coalesce(trans_stor_cust_photo,0)) as trans_stor_cust_photo,
sum(coalesce(tot_stor_cust_photo,0)) as tot_stor_cust_photo,
sum(coalesce(res_vir_cap_photo,0)) as res_vir_cap_photo,
sum(coalesce(com_vir_cap_photo,0)) as com_vir_cap_photo,
sum(coalesce(ind_vir_cap_photo,0))  as ind_vir_cap_photo,
sum(coalesce(tran_vir_cap_photo,0))  as tran_vir_cap_photo,
sum(coalesce(total_vir_cap_photo,0)) as total_vir_cap_photo,
sum(coalesce(res_vir_cust_photo,0))  as res_vir_cust_photo,
sum(coalesce(com_vir_cust_photo,0))  as com_vir_cust_photo,
sum(coalesce(ind_vir_cust_photo,0))  as ind_vir_cust_photo,
sum(coalesce(tran_vir_cust_photo,0))  as tran_vir_cust_photo,
sum(coalesce(total_vir_cust_photo,0))  as total_vir_cust_photo,
sum(coalesce(res_soldback_photo,0))  as res_soldback_photo,
sum(coalesce(com_soldback_photo,0))  as com_soldback_photo,
sum(coalesce(ind_soldback_photo,0))  as ind_soldback_photo,
sum(coalesce(tran_soldback_photo,0)) as tran_soldback_photo,
sum(coalesce(total_soldback_photo,0)) as total_soldback_photo,
sum(coalesce(res_cap_wind,0)) as res_cap_wind,
sum(coalesce(com_cap_wind,0))  as com_cap_wind,
sum(coalesce(ind_cap_wind,0))  as ind_cap_wind,
sum(coalesce(tran_cap_wind,0))  as tran_cap_wind,
sum(coalesce(total_cap_wind,0))  as total_cap_wind,
sum(coalesce(res_cust_wind,0))  as res_cust_wind,
sum(coalesce(com_cust_wind,0))  as com_cust_wind,
sum(coalesce(ind_cust_wind,0))  as ind_cust_wind,
sum(coalesce(tran_cust_wind,0)) as tran_cust_wind,
sum(coalesce(total_cust_wind,0))  as total_cust_wind,
sum(coalesce(res_soldback_wind,0))  as res_soldback_wind,
sum(coalesce(com_soldback_wind,0))  as com_soldback_wind,
sum(coalesce(ind_soldback_wind,0))  as ind_soldback_wind,
sum(coalesce(tran_soldback_wind,0)) as tran_soldback_wind,
sum(coalesce(total_soldback_wind,0))  as total_soldback_wind,
sum(coalesce(res_cap_other,0))  as res_cap_other,
sum(coalesce(com_cap_other,0))  as com_cap_other,
sum(coalesce(ind_cap_other,0))  as ind_cap_other,
sum(coalesce(tran_cap_other,0))  as tran_cap_other,
sum(coalesce(total_cap_other,0)) as total_cap_other,
sum(coalesce(res_cust_other,0))  as res_cust_other,
sum(coalesce(com_cust_other,0))  as com_cust_other,
sum(coalesce(ind_cust_other,0))  as ind_cust_other,
sum(coalesce(tran_cust_other,0)) as tran_cust_other,
sum(coalesce(total_cust_other,0))  as total_cust_other,
sum(coalesce(res_soldback_other,0))  as res_soldback_other,
sum(coalesce(com_soldback_other,0))  as com_soldback_other,
sum(coalesce(ind_soldback_other,0)) as ind_soldback_other,
sum(coalesce(tran_soldback_other,0))  as tran_soldback_other,
sum(coalesce(total_soldback_other,0))  as total_soldback_other,
sum(coalesce(res_cap_all,0))  as res_cap_all,
sum(coalesce(com_cap_all,0))  as com_cap_all,
sum(coalesce(ind_cap_all,0))  as ind_cap_all,
sum(coalesce(trans_cap_all,0))  as trans_cap_all,
sum(coalesce(total_cap_all,0))  as total_cap_all,
sum(coalesce(res_cust_all,0))  as res_cust_all,
sum(coalesce(com_cust_all,0))  as com_cust_all,
sum(coalesce(ind_cust_all,0))  as ind_cust_all,
sum(coalesce(tran_cust_all,0))  as tran_cust_all,
sum(coalesce(total_custall,0))  as total_custall,
sum(coalesce(res_soldback_all,0))  as res_soldback_all,
sum(coalesce(com_soldback_all,0))  as com_soldback_all,
sum(coalesce(ind_soldback_all,0))  as ind_soldback_all,
sum(coalesce(tran_soldback_all,0))  as tran_soldback_all,
sum(coalesce(total_soldback_all,0)) as total_soldback_all
FROM "Renew"."Util_Energy"
group by year, 
month, 
state
order by state, year, month;