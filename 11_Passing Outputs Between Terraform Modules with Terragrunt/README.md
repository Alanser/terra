`terragrunt run-all apply`

Note The `terragrunt run-all apply` command should be used in the initial deployment of an environment. If you were to modify one infrastructure component, i.e. the ec2 module, you would just run `terragrunt apply` in the ec2 directory to apply the change. 