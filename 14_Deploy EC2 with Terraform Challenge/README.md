```
aws dynamodb create-table \
    --table-name terraform-locks \
    --attribute-definitions AttributeName=LockID,AttributeType=S \
    --key-schema AttributeName=LockID,KeyType=HASH \
    --provisioned-throughput ReadCapacityUnits=5,WriteCapacityUnits=5 \
    --region us-west-2
```

`aws dynamodb describe-table --table-name terraform-locks --region us-west-2`

`aws s3api create-bucket --bucket terraformstate-bdb9434b23 --region us-west-2 --create-bucket-configuration LocationConstraint=us-west-2`

`aws s3api put-bucket-versioning --bucket terraformstate-bdb9434b23 --versioning-configuration Status=Enabled`

```
aws s3api put-bucket-encryption --bucket terraformstate-bdb9434b23 --server-side-encryption-configuration '{
  "Rules": [
    {
      "ApplyServerSideEncryptionByDefault": {
        "SSEAlgorithm": "AES256"
      }
    }
  ]
}'

```


`terraform init -reconfigure`

