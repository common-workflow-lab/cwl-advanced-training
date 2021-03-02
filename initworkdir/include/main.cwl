cwlVersion: v1.2
class: CommandLineTool
inputs:
  val: string
requirements:
  InitialWorkDirRequirement:
    listing:
      - entryname: myscript.py
        entry: {$include: myscript.py}
arguments: [python, myscript.py, $(inputs.val)]
outputs: []
