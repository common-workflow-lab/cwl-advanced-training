cwlVersion: v1.2
class: CommandLineTool
inputs: []
arguments: [touch, first.txt, second.txt]
outputs:
  touched:
    type: File[]
    outputBinding:
      glob: "*.txt"
