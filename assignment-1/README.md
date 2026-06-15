# Assignment 1 – WordPress Deployment Using Terraform on AWS

## Overview

This project demonstrates the use of Terraform to deploy a fully functional WordPress website on AWS. The infrastructure is defined using Infrastructure as Code (IaC), allowing repeatable and automated deployment of cloud resources.

The deployment includes an EC2 instance, security group configuration, and automated software installation using a cloud-init script.

---

## Architecture

The infrastructure consists of:

- EC2 instance (Ubuntu-based virtual machine)
- Security group allowing HTTP and SSH access
- Automated WordPress installation via user data script
- Publicly accessible web server

---

## Project Structure
