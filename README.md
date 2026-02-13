Project Summary

This repository contains Infrastructure as Code (IaC) configurations written in Terraform to provision and manage cloud infrastructure on AWS.

The infrastructure is designed to be:

✅ Modular

✅ Reproducible

✅ Version-controlled

✅ Environment-aware (dev / stage / prod)

✅ Secure (remote backend + state locking recommended)

Terraform is used to provision networking, compute, security, and application load balancing resources in a consistent and automated manner.

It represents:

VPC

Public & Private Subnets

Internet Gateway

ALB

EC2 instances

NAT Gateway

(Optional) RDS

Remote Backend (S3 + DynamoDB)

<img width="1022" height="1051" alt="image" src="https://github.com/user-attachments/assets/4a400107-fa3e-4799-9aa0-8d55fe33c9b3" />
