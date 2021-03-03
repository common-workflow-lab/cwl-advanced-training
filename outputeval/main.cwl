cwlVersion: v1.2
class: CommandLineTool
requirements:
  InlineJavascriptRequirement: {}
inputs: []
arguments: [echo, "5"]
stdout: result.txt
outputs:
  result:
    type: int
    outputBinding:
      glob: result.txt
      loadContents: true
      outputEval: $(parseInt(self[0].contents))
