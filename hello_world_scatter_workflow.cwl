#!/usr/bin/env cwl-runner

cwlVersion: v1.0
class: Workflow

requirements:
  - class: ScatterFeatureRequrement
  - class: SubworkflowFeature

inputs:
  hello_world_script: File
  duplicator_script: File
  make_caps_script: File
  numbers: int[]
  names: string[]

outputs:
  hello_world_outputs:
    type: File[]
    outputSource: scatter_hello_world/final_outputs

steps:
  scatter_hello_world:
    run: hello_world_subworkflow.cwl
    in:
      hello_world_script_file: hello_world_script
      duplicator_script_file: duplicator_script
      make_caps_script_file: make_caps_script
      number: numbers
      name: names
    out:
      [final_outputs]
    scatter: [number, names]
    scatterMethod: flat_crossproduct
