class: Workflow
cwlVersion: v1.2
$namespaces:
  arv: "http://arvados.org/cwl#"
inputs: []
requirements:
  SubworkflowFeatureRequirement: {}
steps:
  step1:
    hints:
      arv:RunInSingleContainer: {}
    in:
      msg: {default: "Message for the subworkflow."}
    run: subworkflow.cwl
    out: [out]
  step2:
    in:
      file: step1/out
    run: rev.cwl
    out: [out]
outputs:
  step1out:
    type: File
    outputSource: step1/out
  step2out:
    type: File
    outputSource: step2/out
