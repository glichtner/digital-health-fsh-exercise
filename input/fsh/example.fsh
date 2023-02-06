Profile: EuropeanSingle
Parent: Patient
Id: european-single
Title: "European Single"
Description: "A patient example"
* name 1..*
* address 2..*
* address.line 0..3
//* maritalStatus.coding.system = "http://snomed.org/info"
//* maritalStatus.coding.code = #125681006
//* maritalStatus.coding.display = "Single person (finding)"
* maritalStatus = http://snomed.org/info#125681006 "Single person (finding)"
* communication.language from european-languages (required)
* link 0..0

ValueSet: EuropeanLanguages
Id: european-languages
Title: "European Languages"
Description: "European Languages"
* include codes from system http://snomed.org/info where concept is-a #297931006 "Language commonly spoken in Europe (qualifier value)"

Instance: EuropeanSingleExample
InstanceOf: EuropeanSingle
Usage: #example
Title: "Example"
Description: "Example"
* name.family = "Doe"
* name.given[0] = "John"
* name.given[1] = "Peter"
* address[0].line = "123 Main Street"
* address[0].city = "Anytown"
* address[0].state = "Any State"
* address[0].postalCode = "12345"
* address[0].country = "US"
* address[1].line = "irgendwas"
* communication[0].language = http://snomed.org/info#297472003 "Breton language (qualifier value)"