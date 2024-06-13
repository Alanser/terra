`cp -p -a ./production/. ./development/`

These commands use the sed tool to rename the Production environment variable to Development, as well as update the VPC CIDR block ranges defined in the environment_vars.yaml file:
`sed -i 's/Production/Development/g' ./development/environment_vars.yaml && sed -i 's+10.0.0.0/16+10.1.0.0/16+g' ./development/environment_vars.yaml && sed -i 's+10.0.0.0/24+10.1.0.0/24+g' ./development/environment_vars.yaml`


`cd development && terragrunt run-all apply`

