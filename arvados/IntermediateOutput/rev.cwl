class: CommandLineTool
cwlVersion: v1.2
inputs:
  file: File
arguments: [rev, $(inputs.file)]
stdout: rev.txt
outputs:
  out: stdout
