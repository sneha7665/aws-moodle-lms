# Infrastructure Rebuild Guide

## Objective

This document explains how to rebuild the AWS Moodle LMS environment using Infrastructure as Code.

## Components

* EC2 Instance
* Security Groups
* RDS MySQL
* Apache Web Server
* PHP
* Moodle LMS

## Steps

### 1. Clone Repository

git clone <repository-url>

### 2. Initialize Terraform

terraform init

### 3. Validate Configuration

terraform validate

### 4. Review Infrastructure Plan

terraform plan

### 5. Deploy Infrastructure

terraform apply

### 6. Configure Moodle

* Install Apache
* Install PHP
* Configure Database
* Deploy Moodle

## Outcome

A fully functioning Moodle LMS deployment on AWS.
