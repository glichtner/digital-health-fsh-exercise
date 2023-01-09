Alias: $snomed = http://snomed.info/sct

ValueSet: LanguagesFromEuropeVS
Id: languages-spoken-in-europe
Title: "Languages Spoken in Europe"
Description: "Value Set for languages spoken in Europe"
* codes from system $snomed where concept is-a #297931006 "Language commonly spoken in Europe (qualifier value)"

Profile: EuropeanSingle
Parent: Patient
Id: european-single
Title: "European Single"
Description: "A European Single"
* name 1..1
* address 2..*
  * line 0..3
* maritalStatus = $snomed#125681006 "Single person (finding)"
* communication
  * language from LanguagesFromEuropeVS (extensible)
* link 0..0

Instance: EuropeanSingleInstance
InstanceOf: EuropeanSingle
Usage: #example
* name
  * use = #official
  * given = "Max"
  * family = "Mustermann"
* address[0]
  * use = #home
  * line = "Musterstraße 1"
  * city = "Musterstadt"
  * postalCode = "12345"
  * country = "DE"
* address[1]
  * use = #home
  * line = "Musterstraße 1"
  * city = "Musterstadt"
  * postalCode = "12345"
  * country = "DE"
* maritalStatus = $snomed#125681006 "Single person (finding)"
* communication
  * language = $snomed#297459004 "Basque language (qualifier value)"
