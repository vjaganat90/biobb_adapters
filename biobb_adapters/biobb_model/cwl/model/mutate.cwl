#!/usr/bin/env cwl-runner
cwlVersion: v1.0
class: CommandLineTool
baseCommand:
  - mutate
inputs:
  system:
    type: string
    inputBinding:
      position: 1
      prefix: --system
    default: ""
  step:
    type: string
    inputBinding:
      position: 2
      prefix: --step
    default: "mutate"
  conf_file:
    type: File
    inputBinding:
      position: 3
      prefix: --config
#BB specific
  input_pdb_path:
    type: File
    inputBinding:
      position: 4
      prefix: --input_pdb_path
  output_pdb_path:
    type: string
    inputBinding:
      position: 5
      prefix: --output_pdb_path
outputs:
  output_pdb_file:
    type: File
    outputBinding:
      glob: $(inputs.output_pdb_path)
