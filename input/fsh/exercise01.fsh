Alias: $snomed = http://snomed.info/sct

Instance: PopulationCOVID19
InstanceOf: EvidenceVariable
Usage: #example
Title: "Population"
Description: "COVID-19 patients"
* status = #active
* characteristic
  * definitionCodeableConcept = $snomed#840539006 "Disease caused by severe acute respiratory syndrome coronavirus 2 (disorder)"

Instance: InterventionIvermectin
InstanceOf: ActivityDefinition
Usage: #example
Title: "Intervention"
Description: "Administration of Ivermectin"
* status = #active
* subjectCanonical = Canonical(PopulationCOVID19)
* productCodeableConcept = $snomed#387559003 "Ivermectin (substance)"
* doNotPerform = true
