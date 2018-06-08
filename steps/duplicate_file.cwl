cwlVersion: v1.0
class: CommandLineTool

baseCommand: sh

inputs:
  script_file:
    type: File
    doc: Script to duplicate files
    inputBinding:
      position: 1
  input_file:
    type: File
    doc: Files to duplicate
    inputBinding:
      position: 2

outputs:
  duplicate_files:
    type: File[]
    outputBinding:
      glob: "*.txt"