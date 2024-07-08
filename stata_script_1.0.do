tostring cpv, generate(cpv_str)
drop cpv
rename cpv_str cpv
generate cpv_2char = substr(cpv, 1, 3)
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
rename siren_ind cae_siren

by contract_type, sort : logistic sme g_clause g_criterion g_weight advertising price_weight award_price allotment framework social_clause i.procedure_type i.legal_status i.month i.departement i.cpv [pweight = siren], vce(cluster id_contract) coef

by contract_type, sort : logistic sme other_offers g_clause g_criterion g_weight advertising price_weight award_price allotment framework social_clause i.procedure_type i.legal_status i.month i.departement i.cpv [pweight = siren], vce(cluster id_contract) coef

by contract_type, sort : logistic sme sme_ratio g_clause g_criterion g_weight advertising price_weight award_price allotment framework social_clause i.procedure_type i.legal_status i.month i.departement i.cpv [pweight = siren], vce(cluster id_contract) coef
