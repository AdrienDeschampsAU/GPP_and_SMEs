*Table 3:

import delimited "your path\sample_1.0.csv", stringcols(20) clear 

generate cpv_2char = substr(cpv, 2, 2)
drop cpv
rename cpv_2char cpv
encode cpv, generate(cpvind)
drop cpv
rename cpvind cpv

encode quarter, generate(quarterind)
drop quarter
rename quarterind quarter

encode status, generate(statusind)
drop status
rename statusind status

tostring region, replace force
encode region, generate(regionind)
drop region
rename regionind region

encode authority_siren, generate(authority_siren_ind)
drop authority_siren
rename authority_siren_ind authority_siren

logistic participation green advertising price_weight award_price allotment framework social_clause, vce(cluster id_contract) coef

logistic participation green advertising price_weight award_price allotment framework social_clause i.quarter i.status i.region i.cpv, vce(cluster id_contract) coef

logistic participation green advertising price_weight award_price allotment framework social_clause i.quarter i.status i.region i.cpv [pweight = authority_siren], vce(cluster id_contract) coef

logistic participation g_clause g_criterion g_weight advertising price_weight award_price allotment framework social_clause i.quarter i.status i.region i.cpv [pweight = authority_siren], vce(cluster id_contract) coef

logistic participation g_clause g_criterion g_weight offers_other advertising price_weight award_price allotment framework social_clause i.quarter i.status i.region i.cpv [pweight = authority_siren], vce(cluster id_contract) coef





*Table 4:

import delimited "your path\sample_1.0.csv", stringcols(20) clear 

generate cpv_2char = substr(cpv, 2, 3)
drop cpv
rename cpv_2char cpv
encode cpv, generate(cpvind)
drop cpv
rename cpvind cpv

encode quarter, generate(quarterind)
drop quarter
rename quarterind quarter

encode status, generate(statusind)
drop status
rename statusind status

tostring region, replace force
encode region, generate(regionind)
drop region
rename regionind region

encode authority_siren, generate(authority_siren_ind)
drop authority_siren
rename authority_siren_ind authority_siren

tostring cpv_division, replace force

logistic participation green advertising price_weight award_price allotment framework social_clause i.quarter i.status i.region i.cpv if cpv_division == "45" [pweight = authority_siren], vce(cluster id_contract) coef

logistic participation g_clause g_criterion g_weight advertising price_weight award_price allotment framework social_clause i.quarter i.status i.region i.cpv if cpv_division == "45"[pweight = authority_siren], vce(cluster id_contract) coef

logistic participation g_clause g_criterion g_weight offers_other advertising price_weight award_price allotment framework social_clause i.quarter i.status i.region i.cpv if cpv_division == "45" [pweight = authority_siren], vce(cluster id_contract) coef

nbreg offers_sme g_clause g_criterion g_weight offers_other advertising price_weight award_price allotment framework social_clause i.quarter i.status i.region i.cpv if cpv_division == "45" [pweight = authority_siren], dispersion(mean) vce(cluster id_contract)



*Table 5:

import delimited "your path\sample_1.0.csv", stringcols(20) clear 

generate cpv_2char = substr(cpv, 2, 3)
drop cpv
rename cpv_2char cpv
encode cpv, generate(cpvind)
drop cpv
rename cpvind cpv

encode quarter, generate(quarterind)
drop quarter
rename quarterind quarter

encode status, generate(statusind)
drop status
rename statusind status

tostring region, replace force
encode region, generate(regionind)
drop region
rename regionind region

encode authority_siren, generate(authority_siren_ind)
drop authority_siren
rename authority_siren_ind authority_siren

tostring cpv_division, replace force

logistic participation green advertising price_weight award_price allotment framework social_clause i.quarter i.status i.region i.cpv if cpv_division == "45" [pweight = authority_siren], vce(cluster id_contract) coef

logistic participation g_clause g_criterion g_weight advertising price_weight award_price allotment framework social_clause i.quarter i.status i.region i.cpv if cpv_division == "45"[pweight = authority_siren], vce(cluster id_contract) coef

logistic participation g_clause g_criterion g_weight offers_other advertising price_weight award_price allotment framework social_clause i.quarter i.status i.region i.cpv if cpv_division == "45" [pweight = authority_siren], vce(cluster id_contract) coef

nbreg offers_sme g_clause g_criterion g_weight offers_other advertising price_weight award_price allotment framework social_clause i.quarter i.status i.region i.cpv if cpv_division == "45" [pweight = authority_siren], dispersion(mean) vce(cluster id_contract)


*Table 6:

import delimited "your path\sample_1.0.csv", stringcols(20) clear 

generate cpv_2char = substr(cpv, 2, 3)
drop cpv
rename cpv_2char cpv

encode quarter, generate(quarterind)
drop quarter
rename quarterind quarter

encode status, generate(statusind)
drop status
rename statusind status

tostring region, replace force
encode region, generate(regionind)
drop region
rename regionind region

encode authority_siren, generate(authority_siren_ind)
drop authority_siren
rename authority_siren_ind authority_siren

tostring cpv_division, replace force

logistic participation green advertising price_weight award_price allotment framework social_clause i.quarter i.status i.region if cpv == "713" [pweight = authority_siren], vce(cluster id_contract) coef

logistic participation g_clause g_criterion g_weight advertising price_weight award_price allotment framework social_clause i.quarter i.status i.region if cpv == "713"[pweight = authority_siren], vce(cluster id_contract) coef

logistic participation g_clause g_criterion g_weight offers_other advertising price_weight award_price allotment framework social_clause i.quarter i.status i.region if cpv == "713" [pweight = authority_siren], vce(cluster id_contract) coef


*Table 7:

import delimited "your path\sample_1.0.csv", stringcols(20) clear 

generate cpv_2char = substr(cpv, 2, 4)
drop cpv
rename cpv_2char cpv

encode quarter, generate(quarterind)
drop quarter
rename quarterind quarter

encode status, generate(statusind)
drop status
rename statusind status

tostring region, replace force
encode region, generate(regionind)
drop region
rename regionind region

encode authority_siren, generate(authority_siren_ind)
drop authority_siren
rename authority_siren_ind authority_siren

tostring cpv_division, replace force

logistic participation green advertising price_weight award_price allotment framework social_clause i.quarter i.status i.region if cpv == "9091" [pweight = authority_siren], vce(cluster id_contract) coef

logistic participation g_clause g_criterion g_weight advertising price_weight award_price allotment framework social_clause i.quarter i.status i.region if cpv == "9091"[pweight = authority_siren], vce(cluster id_contract) coef

logistic participation g_clause g_criterion g_weight offers_other advertising price_weight award_price allotment framework social_clause i.quarter i.status i.region if cpv == "9091" [pweight = authority_siren], vce(cluster id_contract) coef


*Table 8:

import delimited "your path\sample_1.0.csv", numericcols(20) clear 

generate cpv_2char = substr(cpv, 2, 3)
drop cpv
rename cpv_2char cpv
encode cpv, generate(cpvind)
drop cpv
rename cpvind cpv

encode quarter, generate(quarterind)
drop quarter
rename quarterind quarter

encode status, generate(statusind)
drop status
rename statusind status

tostring region, replace force
encode region, generate(regionind)
drop region
rename regionind region

tostring authority_siren, replace force
encode authority_siren, generate(authority_siren_ind)
drop authority_siren
rename authority_siren_ind authority_siren

clogit participation green advertising price_weight award_price allotment framework social_clause i.quarter i.status i.region, group(cpv) vce(robust)

clogit participation g_clause g_criterion g_weight advertising price_weight award_price allotment framework social_clause i.quarter i.status i.region, group(cpv) vce(robust)

clogit participation g_clause g_criterion g_weight offers_other advertising price_weight award_price allotment framework social_clause i.quarter i.status i.region, group(cpv) vce(robust)




import delimited "your path\sample_1.0.csv", numericcols(20) clear

generate cpv_2char = substr(cpv, 2, 2)
drop cpv
rename cpv_2char cpv
encode cpv, generate(cpvind)
drop cpv
rename cpvind cpv

encode quarter, generate(quarterind)
drop quarter
rename quarterind quarter

encode status, generate(statusind)
drop status
rename statusind status

tostring region, replace force
encode region, generate(regionind)
drop region
rename regionind region

tostring authority_siren, replace force
encode authority_siren, generate(authority_siren_ind)
drop authority_siren
rename authority_siren_ind authority_siren

drop if cpv == 19
drop if cpv == 38
drop if cpv == 8
drop if cpv == 21
drop if cpv == 26
drop if cpv == 33
drop if cpv == 37
drop if cpv == 41

drop if green == 0 & cpv == 36
drop if green == 1 & cpv == 8
drop if green == 1 & cpv == 21
drop if green == 1 & cpv == 26
drop if green == 1 & cpv == 33
drop if green == 1 & cpv == 36
drop if green == 1 & cpv == 37
drop if green == 1 & cpv == 41

teffects ipwra (participation offers_other advertising price_weight award_price allotment framework social_clause i.status i.region i.quarter i.cpv, logit) (green offers_other advertising price_weight award_price allotment framework social_clause i.status i.region i.quarter i.cpv, logit) [pweight = authority_siren],vce(cluster id_contract)


*Table 9:

import delimited "your path\sample_1.0.csv", stringcols(20) clear 

generate cpv_2char = substr(cpv, 2, 2)
drop cpv
rename cpv_2char cpv
encode cpv, generate(cpvind)
drop cpv
rename cpvind cpv

encode quarter, generate(quarterind)
drop quarter
rename quarterind quarter

encode status, generate(statusind)
drop status
rename statusind status

tostring region, replace force
encode region, generate(regionind)
drop region
rename regionind region

encode authority_siren, generate(authority_siren_ind)
drop authority_siren
rename authority_siren_ind authority_siren

nbreg offers_sme green advertising price_weight award_price allotment framework social_clause i.quarter i.status i.region i.cpv [pweight = authority_siren], dispersion(mean) vce(cluster id_contract)

nbreg offers_sme g_clause g_criterion g_weight advertising price_weight award_price allotment framework social_clause i.quarter i.status i.region i.cpv [pweight = authority_siren], dispersion(mean) vce(cluster id_contract)

nbreg offers_sme g_clause g_criterion g_weight offers_other advertising price_weight award_price allotment framework social_clause i.quarter i.status i.region i.cpv [pweight = authority_siren], dispersion(mean) vce(cluster id_contract)
