# Terraform Learning – AWS Infrastructure Projects

## Overview

This repository contains two Terraform-based assignments demonstrating Infrastructure as Code (IaC) principles using AWS.

Both projects focus on automating cloud infrastructure deployment using Terraform, improving repeatability, scalability, and reducing manual configuration.

---

## Assignment 1 – WordPress Deployment on AWS

The first project demonstrates how to deploy a fully functional WordPress website on AWS using Terraform.

Key components:
- EC2 instance (Ubuntu)
- Security group for HTTP and SSH access
- User data script to install Apache, MySQL, PHP, and WordPress
- Public IP access for the website

This assignment focused on:
- Basic Terraform structure
- EC2 provisioning
- Automated application setup using user data scripts
- Initial understanding of AWS networking

---

## Assignment 2 – EC2 Deployment with Cloud-Init

The second project builds on Assignment 1 and introduces cloud-init for automated server configuration.

Key components:
- EC2 instance (Ubuntu)
- Security group configuration
- Cloud-init YAML file for boot-time configuration
- Automated NGINX installation and setup

This assignment focused on:
- Cloud-init automation
- Improved infrastructure structure
- Better separation of configuration from infrastructure code
- Lifecycle management (deploy and destroy)

---

## Key Learning Outcomes

Across both assignments, the following skills were developed:

- Writing Infrastructure as Code using Terraform
- Provisioning AWS EC2 instances
- Configuring security groups and network access
- Automating software installation using user data and cloud-init
- Understanding instance lifecycle management
- Structuring Terraform projects in a modular and readable way
- Using Git for version control and project tracking

---

## Summary

These projects demonstrate a progression from basic EC2 deployment with manual bootstrapping (user data) to more structured and automated provisioning using cloud-init.

They form a foundation for more advanced Infrastructure as Code and DevOps practices.
