# Terraform-for-DevOps

This repository contains my hands-on learning and practice projects while learning **Terraform for DevOps and Cloud Infrastructure Automation**.

The repository includes multiple Terraform projects covering AWS infrastructure provisioning, remote state management, Terraform modules, networking, EC2, S3, DynamoDB, and other Infrastructure as Code (IaC) concepts.

---

## 📚 What is Terraform?

Terraform is an Infrastructure as Code (IaC) tool developed by HashiCorp.

It allows you to define, provision, manage, and automate infrastructure using configuration files written in **HashiCorp Configuration Language (HCL)**.

Instead of manually creating AWS resources through the AWS Console, Terraform allows infrastructure to be defined as code and managed through:

```text
Write Code
    ↓
terraform init
    ↓
terraform validate
    ↓
terraform plan
    ↓
terraform apply
    ↓
Infrastructure Created
