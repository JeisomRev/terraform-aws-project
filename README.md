# Terraform AWS Network and EKS Deployment Exercise

## Overview

This project demonstrates how to use Terraform to deploy a modular AWS infrastructure including networking components and an EKS (Elastic Kubernetes Service) cluster. It's designed for mid-senior level developers to practice creating a scalable and maintainable infrastructure-as-code setup using AWS Free Tier resources.

## Prerequisites

- An active AWS account with access to the Free Tier
- Terraform installed
- AWS CLI installed and configured

## Project Structure
```
terraform-aws-project/
├── environments/
│   └── dev/
│       ├── main.tf
│       ├── variables.tf
│       └── terraform.tfvars
├── modules/
│   ├── networking/
│   │   ├── main.tf
│   │   ├── variables.tf
│   │   └── outputs.tf
│   └── eks/
│       ├── main.tf
│       ├── variables.tf
│       └── outputs.tf
└── README.md
```

## Module Descriptions

1. **Networking Module**: Creates a VPC with public subnets, internet gateway, and route tables.
2. **EKS Module**: Sets up an EKS cluster with a node group using t3.micro instances.

## Setup and Configuration

1. Clone this repository:
`cd terraform-aws-project`
2. Navigate to the environment you want to deploy (e.g., dev):
`cd cd environments/dev`
3. Change the `terraform.tfvars` file with your desired values:
```hcl
region      = "us-west-2"
vpc_cidr    = "10.0.0.0/16"
environment = "dev"
```
4. Initialize Terraform:
`terraform init`

5. Review the execution plan:
`terraform plan`

6. Apply the configuration:
`terraform apply`

7. Cleanup (if necessary):
`terraform destroy`


## Troubleshooting
If you encounter permission errors, ensure your IAM user or role has the following permissions:

- AmazonEKSClusterPolicy
- AmazonEKSWorkerNodePolicy
- AmazonEC2ContainerRegistryReadOnly
- Permissions to create and manage VPCs, subnets, internet gateways, and route tables