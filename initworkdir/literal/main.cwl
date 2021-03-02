cwlVersion: v1.2
class: CommandLineTool
inputs:
  val: string
requirements:
  InitialWorkDirRequirement:
    listing:
      - entryname: myscript.py
        entry: |
          print("$(inputs.val)")
arguments: [python, myscript.py]
outputs: []
