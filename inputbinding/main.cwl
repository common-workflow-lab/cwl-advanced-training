cwlVersion: v1.2
class: CommandLineTool
inputs:
  input1:
    type: string[]
    inputBinding:
      prefix: --p1
  input2:
    type:
      type: array
      items: string
      inputBinding:
        prefix: --p2
  input3:
    type: string[]
    inputBinding:
      prefix: --p3
      itemSeparator: ","
  input4:
    type: string
    inputBinding:
      prefix: --p4=
      separate: false
baseCommand: echo
outputs: []
