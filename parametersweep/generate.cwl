cwlVersion: v1.2
class: ExpressionTool
requirements:
  InlineJavascriptRequirement: {}
inputs:
  min: int
  max: int
  step: int
outputs:
  parameters: int[]
expression: |-
  ${
  var p = [];
  for (var i = inputs.min; i <= inputs.max; i += inputs.step) {
    p.push(i);
  }
  return {parameters: p};
  }
