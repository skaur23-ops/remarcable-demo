# Remarkable DevOps Demo

## Overview

This project demonstrates a scalable and production-inspired infrastructure for a containerized application on AWS using Terraform.

It showcases how to deploy, scale, and operate a service using modern DevOps practices.

---

## Architecture Highlights

* Containerized application deployed on AWS ECS Fargate
* Application Load Balancer for traffic distribution
* Auto scaling based on CPU utilization
* Multi-AZ deployment for high availability
* Centralized logging using CloudWatch
* Infrastructure fully managed via Terraform

---

## What This Demo Shows

* Infrastructure as Code using Terraform
* ECS Fargate service deployment
* Load balancing via Application Load Balancer
* Auto-scaling based on CPU utilization
* Centralized logging with CloudWatch

---

## Prerequisites

* AWS account
* AWS CLI configured (`aws configure`)
* Terraform installed
* Docker installed

---

## How to Run

### 1. Clone the repository

```bash
git clone <your-repo-url>
cd remarcable-demo/terraform
```

### 2. Initialize Terraform

```bash
terraform init
```

### 3. Apply infrastructure

```bash
terraform apply
```

### 4. Access the application

* Go to AWS Console → EC2 → Load Balancer
* Copy the ALB DNS name
* Open it in your browser

---

## Auto Scaling Validation

Auto scaling is configured based on CPU utilization (target: 60%).

To test scaling:

```bash
hey -z 2m -c 50 http://<ALB-DNS>
```

Observe:

* ECS service scaling from 1 → multiple tasks
* CPU utilization increase in CloudWatch

---

## Observability

* Application logs are sent to CloudWatch Logs
* Enables centralized debugging and monitoring
* ECS Container Insights can be enabled for deeper visibility

---

## Assumptions & Simplifications

* Public subnets are used for simplicity (instead of private + NAT)
* Minimal security configuration for demonstration purposes
* Single region deployment
* Local Terraform backend used instead of remote state

---

## Future Improvements

* CI/CD pipeline using GitHub Actions
* Private subnet architecture with NAT Gateway
* SQS-based async processing for background jobs
* Redis caching layer (ElastiCache)
* OpenTelemetry for distributed tracing
* Secrets management using AWS Secrets Manager

---

## Cleanup

To avoid ongoing AWS charges:

```bash
terraform destroy
```

---

## Notes

This project focuses on demonstrating core DevOps patterns such as scalability, automation, and observability rather than production-grade hardening.
