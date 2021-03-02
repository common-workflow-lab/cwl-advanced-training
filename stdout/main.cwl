cwlVersion: v1.2
class: CommandLineTool
inputs:
  val: string
  script:
    type: File
    default:
      class: File
      location: myscript.py
stdout: lower.txt
arguments: [python, $(inputs.script), $(inputs.val)]
outputs:
  lower:
    type: stdout
