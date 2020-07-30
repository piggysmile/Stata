//List all the variables names and label 
foreach var of varlist * {
    local _check: val l `var'
    if `"`_check'"' != "" {
        quietly fre `var'
        di "`var'" char(44) `"`: var label `var' '"' char(44) as result r(lab_valid)
        continue    
        }
    else{
        di "`var'" char(44) `"`: var label `var' '"'    
        continue
        }
}