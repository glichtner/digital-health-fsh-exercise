Profile: Population
Parent: EvidenceVariable
Id: Population
Title: "Population"
Description: ""
* title 1..1
* characteristic
  * description 1..1
  * definitionByTypeAndValue 0..0
  * definitionReference 0..0
  * definitionCanonical 0..0
  * definitionExpression 0..0
  * definitionId 0..0
  * definitionByCombination 0..0
  * definitionCodeableConcept.coding.system = $snomed

Instance: PopulationExample
InstanceOf: Population
Usage: #example
Title: "Population Example"
Description: ""
* title = "Example Recommendation"
* status = #draft
* characteristic[0]
  * description = "COVID-19"
  * definitionCodeableConcept = $snomed#840539006 "Disease caused by severe acute respiratory syndrome coronavirus 2 (disorder)"
  
Profile: InterventionMedicationAdministration
Parent: ActivityDefinition
Id: InterventionMedicationAdministration
Title: "Intervention"
Description: ""
* subjectCanonical 1..1
* subjectCanonical only Canonical(Population)
* productCodeableConcept 1..1
  * coding.system = $snomed

Instance: InterventionMedicationAdministrationExample
InstanceOf: InterventionMedicationAdministration
Usage: #example
Title: "Intervention Example"
* status = #active
* subjectCanonical = Canonical(PopulationExample)
* productCodeableConcept = $snomed#387559003 "Ivermectin (substance)"
