class: Workflow
cwlVersion: v1.2
inputs:
  val: int
steps:
  step1:
    in:
      val: val
      msg: {default: "Executed step1 because inputs.val < 2"}
    run: echo.cwl
    when: $(inputs.val < 2)
    out: [out]
  step2:
    in:
      val: val
      msg: {default: "Executed step2 because inputs.val >= 2"}
    run: echo.cwl
    when: $(inputs.val >= 2)
    out: [out]
outputs:
  out1:
    type: File
    outputSource:
      - step1/out
      - step2/out
    pickValue: first_non_null
requirements:
  InlineJavascriptRequirement: {}
  MultipleInputFeatureRequirement: {}
