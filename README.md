# AWS Install Access Delegation

This modules provisions an IAM role, that can be connected to your application to setup delegation. This allows you to
create an AWS account/role that your customers can grant access to, instead of them granting access to Nuon directly.

Please read more in our [docs](https://docs.nuon.co/guides/install-access-delegation).

## Usage

You can use the following module code in any Terraform project:

```hcl
module "install-access-delegation" {
  source = "nuonco/install-access-delegation/aws"
  version = "1.0.0"

  name = "your-app-name"
  enable_support_access = true
}
```
