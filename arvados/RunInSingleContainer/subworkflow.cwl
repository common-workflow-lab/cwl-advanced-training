class: Workflow
cwlVersion: v1.2
inputs:
  msg: string
steps:
  step1:
    in:
      msg: msg
    run: echo.cwl
    out: [out]
  step2:
    in:
      file: step1/out
    run: rev.cwl
    out: [out]
outputs:
  out:
    type: File
    outputSource: step2/out
