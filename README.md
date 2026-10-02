# Terraform for DevOps

This repository contains my hands-on learning and practice with **Terraform** and **Infrastructure as Code (IaC)**. It covers Terraform fundamentals, AWS infrastructure provisioning, state management, remote backends, state locking, workspaces, and reusable modules.

## 🚀 What I'm Learning

### Terraform Fundamentals
- Terraform installation and setup
- Terraform architecture
- HCL syntax
- Terraform providers
- Resources
- Variables
- Outputs
- Data sources

### AWS Infrastructure Provisioning
Hands-on practice creating and managing AWS resources using Terraform:

- EC2
- VPC
- Subnets
- Security Groups
- S3
- DynamoDB
- IAM
- Other AWS services

### Terraform Workflow

```text
Write Terraform Code
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
        ↓
terraform destroy

🔐 Terraform State Management

This repository also covers:

Terraform state files
Local state management
State changes and conflicts
State synchronization
Terraform state best practices
☁️ Remote Backend

Hands-on practice with storing Terraform state remotely using Amazon S3.

Terraform
    ↓
Amazon S3
    ↓
terraform.tfstate

Benefits:

Centralized state storage
Team collaboration
State persistence
Better state management
🔒 State Locking

Learning and implementing Terraform state locking to prevent multiple Terraform operations from modifying the same state simultaneously.

Topics covered:

State locking
Lock acquisition
Lock release
Lock conflicts
DynamoDB-based state locking
Handling state lock issues
🔄 Terraform Workspaces

Learning Terraform workspaces for managing separate infrastructure states using the same Terraform configuration.

Example:

Development
     ↓
Terraform Workspace
     ↓
Testing
     ↓
Production
📦 Terraform Modules

Learning how to create and use reusable Terraform modules for better infrastructure organization.

Example:

Terraform
│
├── VPC Module
├── EC2 Module
├── S3 Module
├── IAM Module
└── Other Modules
🛠️ Tools & Technologies
Terraform
AWS
Amazon EC2
Amazon VPC
Amazon S3
Amazon DynamoDB
IAM
Git
GitHub
Linux
Window
