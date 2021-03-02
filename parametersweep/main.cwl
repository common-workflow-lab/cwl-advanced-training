cwlVersion: v1.2
class: Workflow
requirements:
  ScatterFeatureRequirement: {}
inputs: []
steps:
  generateParameters:
    run: generate.cwl
    in:
      min: {default: 5}
      max: {default: 30}
      step: {default: 5}
    out: [parameters]
  checkParameters:
    run: check.cwl
    in:
      parm: generateParameters/parameters
      expect: {default: 20}
    scatter: [parm]
    out: [result]
outputs:
  parameters:
    type: int[]
    outputSource: generateParameters/parameters
  results:
    type: int[]
    outputSource: checkParameters/result
