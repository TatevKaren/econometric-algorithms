* Generating varaible *
gen variable_name = .

* Generating categorical varaible *
gen season_index = 1 if season == "Spring" 
replace season_index = 2 if season == "Summer"
replace season_index = 3 if season == "Fall"
replace season_index = 4 if season == "Winter"

* Generating dummy varaible *
gen female_dummy = 1 if gender == "female"
gen female_dummy = 0 if gender == "male"

* Generating interaction varaible *
gen interactionvb = female_dummy*season_index


* Rename a variable *
rename variable_name1 variable_name2

* Showing all possible values of the variable *
tabulate variable_name

* Drop a variable *
drop variable_name

* Drop all the observations with missing value *
drop if variable_name == .

* Give a label to a variable that describes the variable *
label variable female "dummy: takes value 1 when female and 0 when male"

* generating index that is unique per other varaible's unique value *
encode index, gen(companiesid)

* describing the data: Discriptive Statistics *
summarize
