`cd test && go get -t -v`

`go test -v webserver_test.go`


Note: Terratest should be used in a separate AWS account from production. It is recommended to have an account just for testing your Terraform code. This way automated cleanup can be run against the account to ensure resources are not left behind.