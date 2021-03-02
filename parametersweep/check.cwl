cwlVersion: v1.2
class: ExpressionTool
requirements:
  InlineJavascriptRequirement: {}
inputs:
  parm: int
  expect: int
outputs:
  result: int
expression: |-
  ${
  if (inputs.parm == inputs.expect) {
    return {result: 1};
  } else {
    return {result: 0};
  }
  }
