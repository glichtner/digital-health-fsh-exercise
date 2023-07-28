# Introduction to Digital Health: FHIR ShortHand Exercise

## Preparation

1. Install nodejs
    * Binaries from https://nodejs.org/en/download/
    
    OR
    
    * Using conda (create new environment named "sushi" first):
    ```
    conda create -n sushi
    conda activate sushi
    conda install -c conda-forge nodejs
    ```
   
2. Install sushi
    ```
    npm install -g fsh-sushi
    ```
3. Optional: Install VSCode and VSCode extension for FSH
    * vs code: https://code.visualstudio.com/
    * fsh extension: https://fshschool.org/docs/vscode/
4. Clone this repository or run `sushi --init` and modify the generated sushi-config.yml to use `fhirVersion: 5.0.0`.


## Exercise 1


Represent the following recommendation using FHIR resources:

> Ivermectin soll nicht zur COVID-19-Behandlung verabreicht werden.

(read as: "COVID-19 Patienten sollen kein Ivermectin erhalten")

Recommendation #8 from the ["S3-Leitlinie Empfehlungen zur stationären Therapie von Patienten mit COVID-19 – Living Guideline"](https://register.awmf.org/de/leitlinien/detail/113-001LG)

### Steps
* Identify Population and Intervention parts
* Identify appropriate concepts in standardized vocabularies
* Create an instance of [EvidenceVariable](http://hl7.org/fhir/5.0.0-snapshot3/evidencevariable.html) for the population part (look up the link to identify required fields)
* Create an instance of [ActivityDefinition](http://hl7.org/fhir/5.0.0-snapshot3/activitydefinition.html) for the intervention part (look up the link to identify required fields)
* Link population to intervention (hint: look at `subject[x]`)

Create a file named `exercise01.fsh` containing both instances.

## Exercise 2
Specify a simple guideline representation format by creating profiles of the following resources:

### EvidenceVariable (Population)
* Profile name: `Population`
* Allow only `codeableConcepts` from SNOMED CT for characteristics 
  * Disallow all other types
  * Hint: bind value to `[codeableConcept].coding.system` to fix a system, e.g.:
    ```
    * jurisdiction.coding.system = {insert code system identifier}
    ```
  * SNOMED CT's codesystem URI is http://snomed.info/sct
* Make `title` and `characteristic.description` required

### ActivityDefinition (Intervention)
* Profile name: `InterventionMedicationAdministration`
* Require `productCodeableConcept` and allow only SNOMED CT terms
* Make `subjectCanonical` required and allow only your profile of EvidenceVariable for `subjectCanonical`
  * Hint: use the `Canonical()` function for referencing; lookup `only` keyword in the FSH reference

Create a file named `exercise02.fsh` containing both profiles.

## Exercise 3
* Use your own profiles to represent the recommendation from exercise 1 
* Create a file named `exercise03.fsh` containing both instances


## Hints
* Make sure to use the latest FHIR release: 5.0.0 (configure in sushi-config.yml or use template from https://github.com/glichtner/digital-health-fsh-exercise )
* (Regularly) run sushi to validate your profiles & instances
* sushi treats separate .fsh files as if they are one single file, so make sure to not use the same name for different profiles/instances in different files
* Use the FHIR ShortHand reference for help: 
  * https://build.fhir.org/ig/HL7/fhir-shorthand/reference.html
  * Quick reference: https://build.fhir.org/ig/HL7/fhir-shorthand/FSHQuickReference.pdf
* Further learning resources:
  * FSH School: https://fshschool.org/ 
  * FSH Quickstart: https://fshschool.org/quickstart/  
  * Courses: https://fshschool.org/courses/fsh-seminar/ 
  * Online conversion tool: https://fshschool.org/FSHOnline/#/ 
