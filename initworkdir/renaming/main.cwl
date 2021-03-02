cwlVersion: v1.2
class: CommandLineTool
inputs:
  val: string
  script:
    type: File
    default:
      class: File
      location: myscript.py
requirements:
  InitialWorkDirRequirement:
    listing:
      - entryname: renamed.py
        entry: $(inputs.script)
arguments: [python, renamed.py, $(inputs.val)]
outputs: []
