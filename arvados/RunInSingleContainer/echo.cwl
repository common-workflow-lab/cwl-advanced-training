cwlVersion: v1.2
class: CommandLineTool
inputs:
  msg: string
arguments: [echo, $(inputs.msg)]
stdout: result.txt
outputs:
  out: stdout
