class: CommandLineTool
cwlVersion: v1.0
hints:
  ResourceRequirement:
    ramMin: 8
inputs:
  in: string
outputs:
  out:
    type: File
    outputBinding:
      glob: out

requirements:
  EnvVarRequirement:
    envDef:
      TEST_ENV: $(inputs.in)

baseCommand: ["echo", "$TEST_ENV"]

stdout: out
