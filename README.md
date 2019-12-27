# Remote State Lock

This is a terraform module to produce and manage statelocking in terraform itself.

Inspired by <https://github.com/JamesWoolfenden/terraform-aws-statebucket>.

## To use

Make a new file in your iac directory `<iac-directory>/module.terraform_state_lock.tf` and enter the module details

```tf
module terraform_state_lock {
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
sh .terraform/modules/terraform_state_lock/scripts/first-run.sh
```
