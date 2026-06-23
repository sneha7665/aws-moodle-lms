# AWS Moodle LMS Deployment on AWS

## Project Overview

This project demonstrates the deployment of a production-style Moodle Learning Management System (LMS) on Amazon Web Services (AWS).

The solution uses a multi-tier architecture with Moodle hosted on Amazon EC2 and MySQL hosted on Amazon RDS. The project focuses on cloud infrastructure, system administration, database management, security, monitoring, disaster recovery planning, and Infrastructure as Code (IaC).

---

## Architecture

### Services Used

| Service            | Purpose                    |
| ------------------ | -------------------------- |
| Amazon EC2         | Hosts Moodle application   |
| Amazon RDS MySQL   | Managed database service   |
| VPC                | Network isolation          |
| Security Groups    | Traffic control            |
| Apache HTTP Server | Web server                 |
| PHP 8.3            | Moodle runtime environment |
| Moodle LMS         | Learning Management System |
| CloudWatch         | Monitoring and metrics     |
| GitHub             | Version control            |
| Terraform          | Infrastructure as Code     |

---

## Solution Architecture

User Browser
↓
Amazon EC2 (Apache + PHP + Moodle)
↓
Amazon RDS MySQL

Additional Components:

* Security Groups
* CloudWatch Monitoring
* Automated Backups
* GitHub Repository
* Terraform Infrastructure

---

## Features Implemented

### Core Infrastructure

* EC2 Instance Deployment
* RDS MySQL Database
* Apache Web Server Configuration
* PHP Runtime Configuration
* Moodle Installation
* Database Connectivity
* Security Group Configuration

### Moodle Configuration

* Admin User Creation
* Course Creation
* User Management
* LMS Dashboard Configuration

### Operations

* EC2 Start/Stop Procedures
* RDS Start/Stop Procedures
* Database Backup Strategy
* System Recovery Procedures

---

## Project Structure

aws-moodle-lms/

├── README.md

├── architecture/

├── docs/

│ ├── deployment-guide.md

│ ├── backup-restore.md

│ ├── incident-postmortem.md

│ └── architecture-decisions/

├── screenshots/

├── terraform/

├── .github/

│ └── workflows/

└── monitoring/

---

## Deployment Steps

1. Launch Amazon EC2 Instance
2. Configure Security Groups
3. Install Apache
4. Install PHP
5. Configure MySQL Connectivity
6. Create Amazon RDS Database
7. Download Moodle
8. Configure Moodle
9. Complete Installation Wizard
10. Create Administrator Account

---

## Monitoring

Planned Monitoring Components:

* EC2 CPU Utilization
* Memory Utilization
* Network Traffic
* RDS Connections
* RDS CPU Utilization
* Application Availability

Monitoring data will be visualized through CloudWatch Dashboards.

---

## Security Considerations

* Private database connectivity
* Security Group restrictions
* Principle of least privilege
* Database credentials protection
* Backup retention strategy

---

## Backup and Recovery

### Backup Strategy

* Automated RDS Snapshots
* Manual Snapshots Before Changes
* Moodle Data Backup
* Configuration Backup

### Recovery Strategy

* Restore RDS Snapshot
* Restore Moodle Files
* Validate Database Connectivity
* Verify Application Functionality

---

## Future Enhancements

* Terraform Infrastructure Deployment
* GitHub Actions CI/CD Pipeline
* Custom Domain
* HTTPS SSL Certificate
* CloudWatch Dashboards
* Security Audit using Prowler
* Incident Postmortem Documentation
* Architecture Decision Records (ADR)
* Disaster Recovery Documentation

---

## Skills Demonstrated

* Amazon EC2
* Amazon RDS
* VPC Networking
* Security Groups
* Linux Administration
* Apache Configuration
* PHP Configuration
* Moodle Administration
* Git & GitHub
* Infrastructure as Code
* Cloud Monitoring
* Disaster Recovery Planning

---

## Author

Sneha Airodagi

Cloud & DevOps Enthusiast

