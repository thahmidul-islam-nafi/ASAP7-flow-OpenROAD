## Contents 
This repository contains custom scripts, and necessary files used in the RTL to GDSII flow of OpenROAD RISCV32I design with ASAP7 PDK

## Changelog

| Name  | Fixes/Updates                                                  | Date       |
|-------|-----------------------------------------------------------------|------------|
|Nafi| Added initial files and structured directories |Dec 08,2023|
|Nafi| Added alias "sourceorenv" for loading OpenROAD environment variables, populated Makefile_commands.md and openroad_commands.md in explored_commands directory |Dec 11,2023|
|Nafi| Added list_of_necessary_scripts_by_stage.md with list of scripts till Floorplan|Dec 12,2023|


## File Descriptions 




- backups - Contains the backups for previous stage iterations. To be named after the stage implemented (floorplan,synthesis), summary modification (changed_platform_config), and date of backup(MM/DD/YY). Example: changed_platform_config_stage_floorplan_12_8_2023.zip 

- openroad_alias_list.txt - List of bash aliases used for OpenROAD. Look for new additions in the changelog. 

- explored_commands - Contains commands explored individually.  

- file_info - Contains explored information of different files. Keep the files separate by format. For example, there should be 1 file for LEF and another LIB, Tech LEF, etc.

- home (~) - Personal home directory. Will contain only the essential files for OpenROAD, relevant to the current design iteration. To be updated weekly or on need basis. Check the tree below for an getting an idea of what to include. 
   
    - OpenROAD-flow-scripts
        - flow
            - custom_commands - **Contains custom commands for the tool**
            - designs
                - asap7
                    - riscv32i
            - logs - **Contains timing and power report files**
                - asap7
                    - riscv32i
                        - base
            - objects
                - asap7
                    - riscv32i
                        - base
                            - lib
                            - rtlmp
            - platforms
                - asap7
                    - gds
                    - KLayout
                        - drc
                    - lef
                    - lib
                    - openlane
                        - asap7sc7p5t
                    - openRoad
                        - pdn
                    - yoSys
            - results - **Contains odb objects for power, timing and IREM analysis, antenna reports** 
                - asap7
                    - riscv32i
                        - base

- report_info - Contains each individually explored report command. Each file should be titled by the report command name and should contain the report output and any findings. Example: report_checks.md
 
- var_info - Contains each individually explored design variable, with description. All of them can be kept in a file called vars.md. 