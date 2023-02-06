Instance: PopulationExample
InstanceOf: Population
Usage: #example
Title: "Population Example"
Description: "An example population"
* title = "Example Recommendation"
* status = #active
* characteristic[0]
  * description = "COVID-19"
  * definitionCodeableConcept = http://snomed.info/sct#840539006 "Disease caused by severe acute respiratory syndrome coronavirus 2 (disorder)"

Instance: InterventionMedicationAdministrationExample
InstanceOf: InterventionMedicationAdministration
Usage: #example
Title: "Intervention Example"
* status = #active
* subjectCanonical = Canonical(PopulationExample)
* productCodeableConcept = http://snomed.info/sct#387559003 "Ivermectin (substance)"
