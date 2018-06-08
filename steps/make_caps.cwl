cwlVersion: v1.0
class: CommandLineTool

baseCommand: sh

inputs:
  script_file:
    type: File
    doc: Script to change a file's alphabet characters to all caps
    inputBinding:
      position: 1
  input_file:
    type: File[]
    doc: Files to read in
    inputBinding:
      position: 2

outputs:
  final_output_directory:
    type: Directory
    outputBinding:
      glob: "shout*"
