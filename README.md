# infra-aws-terraform

This repository contains code for provisioning infrastructure on AWS using Terraform.

## Repository Structure

```plaintext
.
├── .gitattributes
├── .gitignore
├── aws-bucket-s3/
│   ├── module/
│   │   ├── main.tf
│   │   ├── outputs.tf
│   │   ├── providers.tf
│   │   └── variables.tf
│   ├── module.tf
│   ├── outputs.tf
├── LICENSE
├── README.md
```

## Prerequisites

- Terraform installed;
- AWS account with appropriate permissions;
- AWS CLI configured with your credentials.

## Getting Started

1. Clone the repository:

```shell
git clone https://github.com/JulyseHenriques/infra-aws-terraform.git
cd infra-aws-terraform
```

2. Initialize the Terraform configuration:

```shell
terraform init
```

3. Review the plan:

```shell
terraform plan
```

4. Apply the configuration:

```shell
terraform apply
```

## Usage

### AWS S3 Bucket Module

To use the S3 bucket module, include the following in your Terraform configuration:

```plaintext
module "s3_bucket_module" {
  source          = "./module"

  # Add your variables here
  bucket_name     = "my-unique-bucket-name"
  aws_region      = "us-west-2"  
  environment     = "dev"
}
```

## License

This project is licensed under the MIT License - see the [LICENSE file](./LICENSE) for details.
