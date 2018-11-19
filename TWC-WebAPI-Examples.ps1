#Invoke-WebRequest -Uri "https://texascareercheck.com/CompareOccupations/CompareOccupationsSummary?onetCode1=17-2021.00&onetCode2=19-3091.01" 
#-Headers @{"Upgrade-Insecure-Requests"="1"; "User-Agent"="Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.102 Safari/537.36"; "Accept"="text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8"; "Referer"="https://texascareercheck.com/ExploreCareer/CompareOccupations"; "Accept-Encoding"="gzip, deflate, br"; "Accept-Language"="en-US,en;q=0.9"; "Cookie"="_ga=GA1.2.743987227.1540950738; _gid=GA1.2.193011604.1542595917; _gat=1"}



# Region Employment - Actuaries
#$actuaries = Invoke-WebRequest -Uri "https://texascareercheck.com/api/occupationtexasregionalemploymentinformation?%24filter=SOCCode+eq+%2715-2011+%27+and+RegionNumber+ne+%27000048%27" 
#$actuaries.Content


# Texas Chemical Manufacturing
$chemicalManufacturing = Invoke-WebRequest -Uri "https://texaslaboranalysis.com/api/GetDemandOccupationDetails(WDA='48',CTECareerCluster=null,NAICSCode='325',STEMEndorsement=null)" -Method "POST" -Body "socCodes=&socCodeOverrides="
$chemicalManufacturing.Content
#-Headers @{"Accept"="application/json, text/javascript, */*; q=0.01"; "Referer"="https://texaslaboranalysis.com/Demand"; "Origin"="https://texaslaboranalysis.com"; "X-Requested-With"="XMLHttpRequest"; "User-Agent"="Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.102 Safari/537.36"} -ContentType "application/x-www-form-urlencoded; charset=UTF-8" -Body "socCodes=&socCodeOverrides="