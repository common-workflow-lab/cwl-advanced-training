cwlVersion: v1.2
class: CommandLineTool
inputs:
  bam:
    type: File
    secondaryFiles: .bai
arguments: [ls, $(inputs.bam.dirname)]
outputs: []
