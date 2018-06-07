cwlVersion: v1.0
class: Workflow

inputs:
  hello_world_script_file: File
  duplicator_script_file: File
  make_caps_script_file: File
  name: string
  number: int

outputs:
  final_outputs:
    type: File[]
    outputSource: make_file_caps/output_files

steps:
  output_hello_world:

  duplicate_file:

  make_file_caps:
