<#
.Synopsis
    Real world examples invoking Web API 2 endpoints via Powershell
.DESCRIPTION
    These examples invoke TWC LMCI REST-ful APIs

# 1. Actuaries - Occupation Information
$actuaries = Invoke-WebRequest -Uri "https://texascareercheck.com/api/occupationtexasregionalemploymentinformation?%24filter=SOCCode+eq+%2715-2011+%27+and+RegionNumber+ne+%27000048%27" 
$actuaries.Content

# 2. Green Occupations w/ STEM & Max Salary $70k w/ Min Annual Openings 400 to 5800 - Occupation Information$
$greenSTEMOccupations = Invoke-WebRequest -Uri "https://texascareercheck.com/api/occupations?%24filter=AnnualSalary+ge+0+and+AnnualSalary+le+70000+and+AverageAnnualOpenings+ge+400+and+AverageAnnualOpenings+le+5800+and+Green+eq+true+and+(STEMEndorsement+eq+true)" 
$greenSTEMOccupations.Content

# 3. Texas Chemical Manufacturing
$chemicalManufacturing = Invoke-WebRequest -Uri "https://texaslaboranalysis.com/api/GetDemandOccupationDetails(WDA='48',CTECareerCluster=null,NAICSCode='325',STEMEndorsement=null)" -Method "POST" -Body "socCodes=&socCodeOverrides="
$chemicalManufacturing.Content

# 4. Air Traffic Controllers (Single Occupation Map results) - Gap Analysis
$airTrafficControllers = Invoke-WebRequest -Uri "https://texaslaboranalysis.com/api/GetGapMapDetail(SOCCode='53-2021')"
$airTrafficControllers.Content 

# 5. Air Traffic Controllers - Texas Region - (Multiple Occupation Report) - Gap Analysis
$airTrafficControllers = Invoke-WebRequest -Uri "https://texaslaboranalysis.com/api/GetGapDetails(WDA='48',CareerCluster=null,NAICSCode=null,STEMEndorsement=null)" -Method "POST" -Body "socCodes=53-2021&socCodeOverrides="
$airTrafficControllers.Content 

# 6. Air Traffic Controllers - Capital Area, Dallas & Tarrant County Region - (Multiple Occupation Report) - Gap Analysis
$airTrafficControllers = Invoke-WebRequest -Uri "https://texaslaboranalysis.com/api/GetGapDetails(WDA='14,06,05',CareerCluster=null,NAICSCode=null,STEMEndorsement=null)" -Method "POST" -Body "socCodes=53-2021&socCodeOverrides="
$airTrafficControllers.Content 

# 7. Brazos Valley Region - Top Statistics
$brazosValleyTop25 = Invoke-WebRequest -Uri "https://texaslaboranalysis.com/api/GetTop25StatisticsDetail(WDA='16',EducationLevel='0,1,5,2,3,4',ReportType=0,MedianWage=0)"
$brazosValleyTop25.Content 

# 8. Airline Pilots, CoPilots and Flight Engineers - Tarrant county and Dallas regions - Regional Occupational Profile
$airlinePilots = Invoke-WebRequest -Uri "https://texaslaboranalysis.com/api/GetRopDetail(WDA%20=%20'05,06',%20SOCCode%20=%20'53-2011')"
$airlinePilots.Content 

#>