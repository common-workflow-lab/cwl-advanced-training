cwlVersion: v1.2
class: CommandLineTool
inputs:
  val: string
requirements:
  EnvVarRequirement:
    envDef:
      VALUE: $(inputs.val)
arguments: [env]
outputs: []
