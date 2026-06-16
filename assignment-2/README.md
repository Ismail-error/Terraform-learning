# Assignment 2 – EC2 Deployment with Cloud-Init Using Terraform

## Overview

This project demonstrates how Terraform and cloud-init can be used together, to fully automate the provisioning and configuration of an EC2 instance on AWS.

The aim of this assignment was to deploy a virtual machine and automatically install and configure NGINX on first boot using cloud-init. This removes the need for any manual configuration after deployment.

The final result is a fully working web server deployed using Infrastructure as Code.

---

## Project structure

- provider.tf - AWS provider configuration (eu-west-2 region)
- main.tf - EC2 instance and security group definitions
- variables.tf - Input variables (AMI ID, instance type)
- outputs.tf - Outputs including public IP
- cloud-init.yaml - Automated configuration script for the server
- screenshots/ - Evidence of deployment steps
- README.md - Project documentation

---

## Step 1 – Initialise Terraform

Terraform is initialised to download required providers and prepare the working directory.

Command:
terraform init

Screenshot:
screenshots/1-terraform-init.PNG

---

## Step 2 – Review execution plan

Terraform generates a plan showing what resources will be created.

Command:
terraform plan

Screenshot:
screenshots/2-terraform-plan.PNG

This confirms EC2 and security group will be created.

---

## Step 3 – Deploy infrastructure

Terraform provisions the infrastructure in AWS.

Command:
terraform apply

Screenshot:
screenshots/3-terraform-apply-success.PNG

This creates:
- EC2 instance
- Security group
- Executes cloud-init on boot

---

## Step 4 – Verify EC2 instance

Check AWS console to confirm the instance is running.

Screenshot:
screenshots/4-ec2-instance-running.PNG

Confirms:
- Instance is running
- Public IP assigned

---

## Step 5 – Verify security group

Check inbound rules in AWS console.

Screenshot:
screenshots/5-security-group-rules.PNG

Confirms:
- Port 22 (SSH) open
- Port 80 (HTTP) open

---

## Step 6 – Cloud-init configuration

cloud-init.yaml content:

#cloud-config
package_update: true

packages:
  - nginx

runcmd:
  - systemctl enable nginx
  - systemctl start nginx
  - echo "<h1>Assignment 2 - NGINX deployed with Terraform and Cloud-Init</h1>" > /var/www/html/index.html

Screenshot:
screenshots/6-cloud-init-file.PNG

This ensures:
- NGINX installs automatically
- Service starts on boot
- Custom webpage is created

---

## Step 7 – Verify website

Open browser using EC2 public IP.

Screenshot:
screenshots/7-nginx-working-site.PNG

Confirms:
- NGINX running
- Cloud-init executed successfully

---

## Step 8 – Destroy infrastructure

Command:
terraform destroy

Screenshot:
screenshots/8-terraform-destroy-success.PNG

Confirms:
- EC2 terminated
- Security group removed
- No AWS resources remain

---

## Key learning outcomes

- Terraform automates infrastructure creation
- Cloud-init automates server setup on boot
- Security groups control network access
- Variables and outputs improve structure
- Full lifecycle management (create > deploy > destroy)

---

## Summary

This project demonstrates a fully automated EC2 deployment using Terraform and cloud-init with no manual configuration required.
