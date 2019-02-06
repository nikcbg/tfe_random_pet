# tfe_random_pet 

### Purpose of the repository
- This repository is used as remote state for another repository. 

### This project consist of 2 phases:
 - This respository tfe_random_pet is phase 1 of the project.
 - This [repository](https://github.com/nikcbg/tfe_null_remote_pet) tfe_null_remote_pet is phase 2 of the project.

### List of the files in the repository
File name |	File description
----------|--------------------
.gitignore | list of files and directories to ignore.
main.tf	| Terraform configuration file.

### How to use this repository 
- Create Terraform Enterprice(TFE) [account](https://www.hashicorp.com/resources/getting-started-with-terraform-enterprise#step-1-create-a-terraform-enterprise-account).
- Next create an [organization](https://www.hashicorp.com/resources/getting-started-with-terraform-enterprise#step-2-create-and-manage-an-organization).
- Next integrate your TFE with version control system (in this case GitHub) following this [instructions](https://www.hashicorp.com/resources/getting-started-with-terraform-enterprise#step-4-create-a-workspace).
- Next generate TFE token from User Settings -> Token -> Generate Token.
- Next create a work space in TFE following this [instructions](https://www.hashicorp.com/resources/getting-started-with-terraform-enterprise#step-4-create-a-workspace).
- Next link your workspace with this repository by choosing GitHub as source and the repository name underneath it. 
- Next click on the workspacr you just created and click on Queue Plan:  
  - Queue Plan is equivalent to `terraform plan` command but it is executed in TFE UI.
  - with Queue Plan you are generating an execution plan of what resources will be created.
  - you can see the plan command executing in TFE UI and the output should be as follow: 
  
   ```
    An execution plan has been generated and is shown below.
    Resource actions are indicated with the following symbols:
      + create

    Terraform will perform the following actions:

      + random_pet.example
      id:        <computed>
      length:    "4"
      separator: "-"

    Plan: 1 to add, 0 to change, 0 to destroy.
   ```
 - After the plan is executed you will be asked to Apply the plan (workspaces can be set to Auto Apply or Manual Apply after plan is executed, in this case I am using Manual Apply option)
 - After the apply is executed the output should be as follow:
 
 ```
  Apply complete! Resources: 1 added, 0 changed, 0 destroyed.

  Outputs:

  name = formerly-commonly-curious-oriole
 ```
 
### To Do:
- Go to [this](https://github.com/nikcbg/tfe_null_remote_pet) reopository for phase 2 of the project.
