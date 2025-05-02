# Terraform-Poweed-Multi-Environment-AWS-Infrastructure

This repository contains a Terraform project to provision and manage **multi-environment AWS infrastructure** (such as dev, staging, and production) in a structured, reusable, and scalable way.

---

## 🌍 Features

✅ Multi-environment support (Dev, Staging, Prod)  
✅ Modular Terraform code  
✅ Remote backend configuration (e.g., S3 + DynamoDB for state locking)  
✅ Separate state files per environment  
✅ Automated resource creation (VPCs, subnets, EC2, RDS, etc.)  
✅ Git-integrated infrastructure as code (IaC) workflows

---

## 🛠 Prerequisites

- [Terraform](https://www.terraform.io/) v1.x installed  
- AWS CLI configured (`aws configure`)  
- An AWS account with permissions to create resources  
- Git + GitHub account  
- Optional: Terraform Cloud or S3 backend for remote state

---

## 🚀 Quick Start

```bash
# Clone the repository
git clone https://github.com/aniketmehta03/Terraform-Poweed-Multi-Environment-AWS-Infrastructure.git
cd Terraform-Poweed-Multi-Environment-AWS-Infrastructure

# Initialize Terraform (choose your environment folder)
cd environments/dev
terraform init

# Preview the changes
terraform plan

# Apply the changes (create resources)
terraform apply
