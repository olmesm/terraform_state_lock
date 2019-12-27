# Remote State Lock

This is a terraform module to produce and manage statelocking in terraform itself.

Inspired by <https://github.com/JamesWoolfenden/terraform-aws-statebucket>.

## To use

Make a new file in your iac directory `<iac-directory>/module.state_bucket.tf` and enter the module details

```tf
module statebucket {
  source      = "github.com/olmesm/terraform_state_lock"
  aws_region = "${aws_region}"
  common_tags = var.common_tags
}
```

Initialize terraform then run the setup-script

```sh
# Initialize terraform
terraform init

# Run the setup-script
sh <iac-directory>/.terraform/modules/statebucket/github.com/olmesm/terraform_state_lock/scripts/first-run.sh
```
