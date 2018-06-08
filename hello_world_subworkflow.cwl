cwlVersion: v1.0
class: Workflow

inputs:
  hello_world_script_file: File
  duplicator_script_file: File
  make_caps_script_file: File
  name: string
  number: int

outputs:
  final_output_directory:
    type: Directory
    outputSource: make_caps/final_output_directory

steps:
  hello_world:
    run: steps/hello_world.cwl
    in:
      script_file: hello_world_script_file
      name: name
      number: number
    out:
      [hello_world_output_file]

  duplicate_file:
    run: steps/duplicate_file.cwl
    in:
      script_file: duplicator_script_file
      input_file: hello_world/hello_world_output_file
    out:
      [duplicate_files]

  make_caps:
    run: steps/make_caps.cwl
    in:
      script_file: make_caps_script_file
      input_file: duplicate_file/duplicate_files
    out:
      [final_output_directory]
