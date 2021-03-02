cwlVersion: v1.2
class: CommandLineTool
inputs: []
arguments: [touch, chr1.bam, chr1.bai]
outputs:
  bam:
    type: File
    secondaryFiles: ^.bai
    outputBinding:
      glob: "*.bam"
