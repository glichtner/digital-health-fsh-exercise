Profile: Population
Parent: EvidenceVariable
Id: Population
Title: "Population"
Description: "Profile for EvidenceVariable to define a population"
* title 1..1
* characteristic
  * description 1..1
  * definitionByTypeAndValue 0..0
  * definitionReference 0..0
  * definitionCanonical 0..0
  * definitionExpression 0..0
  * definitionId 0..0
  * definitionByCombination 0..0
  * definitionCodeableConcept.coding.system = "http://snomed.info/sct"

Profile: InterventionMedicationAdministration
Parent: ActivityDefinition
Id: InterventionMedicationAdministration
Title: "Intervention"
Description: "Profile for ActivityDefinition to define an intervention"
* subjectCanonical 1..1
* subjectCanonical only Canonical(Population)
* productCodeableConcept 1..1
  * coding.system = "http://snomed.info/sct"
