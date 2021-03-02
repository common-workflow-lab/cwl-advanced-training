cwlVersion: v1.2
class: CommandLineTool
inputs:
  val: string
  script:
    type: File
    default:
      class: File
      location: myscript.py
arguments: [python, $(inputs.script), $(inputs.val)]
outputs: []
