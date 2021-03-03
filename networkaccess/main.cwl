cwlVersion: v1.2
class: CommandLineTool
inputs:
  url: string
requirements:
  NetworkAccess:
    networkAccess: true
arguments: [curl, -O, $(inputs.url)]
outputs:
  downloaded:
    type: File
    outputBinding:
      glob: "*"
