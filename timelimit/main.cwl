cwlVersion: v1.2
class: CommandLineTool
requirements:
  ToolTimeLimit:
    timelimit: 3
  ShellCommandRequirement: {}
inputs:
  val: string
arguments: ["sleep", "8",
            {shellQuote: false, valueFrom: "&&"},
            "echo", $(inputs.val)]
outputs: []
