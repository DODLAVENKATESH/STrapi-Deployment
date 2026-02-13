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

<img width="701" height="292" alt="image" src="https://github.com/user-attachments/assets/ee5a6203-682d-4fcc-a844-a6886f649544" />

🔹 Components
1️⃣ VPC (Virtual Private Cloud)

Custom VPC

CIDR block defined per environment

Enables isolated networking

2️⃣ Subnets

Public Subnets

Internet Gateway attached

Hosts Load Balancer

Private Subnets

Host EC2 / Application servers

No direct internet exposure

3️⃣ Internet Gateway

Enables outbound internet access for public subnets

4️⃣ NAT Gateway (Optional but Recommended)

Allows private instances to access internet securely

Used for updates, package downloads

5️⃣ Application Load Balancer (ALB)

Public-facing

Routes HTTP/HTTPS traffic to EC2 instances

Health checks enabled

6️⃣ EC2 Instances

Deployed in private subnets

Runs application (e.g., Strapi / API / backend service)

Attached to Target Group

7️⃣ Security Groups

Restrictive inbound rules

ALB → EC2 allowed

SSH limited (if enabled)

8️⃣ Remote Backend (Recommended)

S3 bucket for Terraform state

DynamoDB table for state locking

