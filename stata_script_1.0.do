* 1) Manually import the csv file with default settings

* 2) Run this section :

generate cpv_2char = substr(cpv, 2, 3)
drop cpv
rename cpv_2char cpv
encode cpv, generate(cpvind)
drop cpv
rename cpvind cpv

encode procedure_type, generate(procedure_typeind)
drop procedure_type
rename procedure_typeind procedure_type

encode month, generate(monthind)
drop month
rename monthind month

tostring departement, replace force
encode departement, generate(departementind)
drop departement
rename departementind departement

tostring legal_status, replace force
encode legal_status, generate(legal_status_ind)
drop legal_status
rename legal_status_ind legal_status

tostring siren, replace force
encode siren, generate(siren_ind)
drop siren
rename siren_ind siren


* 3) Run one of these three regressions according to the file imported

* General effect :

by contract_type, sort : logistic sme g_clause g_criterion g_weight advertising price_weight award_price allotment framework social_clause i.procedure_type i.legal_status i.month i.departement i.cpv [pweight = siren], vce(cluster id_contract) coef

* Participation :

by contract_type, sort : logistic participation other_offers g_clause g_criterion g_weight advertising price_weight award_price allotment framework social_clause i.procedure_type i.legal_status i.month i.departement i.cpv [pweight = siren], vce(cluster id_contract) coef

* Success :

by contract_type, sort : logistic sme sme_ratio g_clause g_criterion g_weight advertising price_weight award_price allotment framework social_clause i.procedure_type i.legal_status i.month i.departement i.cpv, vce(cluster id_contract) coef
