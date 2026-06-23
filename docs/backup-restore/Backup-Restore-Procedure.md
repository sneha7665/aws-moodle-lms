# Backup and Restore Procedure

## Purpose

This document describes the backup and recovery process for the AWS Moodle Learning Management System.

## Architecture Components

* Amazon EC2 (Application Server)
* Amazon RDS MySQL (Database)
* Moodle Application Files
* Moodle Data Directory

## Backup Strategy

### Database Backups

Service: Amazon RDS MySQL

Method:

* Automated RDS Backups
* Manual Snapshots before major changes

Retention:

* 7 Days

Recovery Point Objective (RPO):

* Maximum data loss: 24 hours

Recovery Time Objective (RTO):

* Target recovery time: 30–60 minutes

## EC2 Backup Strategy

Method:

* Amazon Machine Image (AMI)

Frequency:

* Before major updates
* Before infrastructure modifications

Purpose:

* Rapid server restoration

## Moodle Application Backup

Components:

* Moodle Source Code
* Configuration Files
* Documentation

Storage:

* GitHub Repository

Benefits:

* Version Control
* Change Tracking
* Rollback Capability

## Recovery Procedure

### Scenario 1: EC2 Failure

Steps:

1. Launch replacement EC2 instance.
2. Restore application files.
3. Restore Moodle configuration.
4. Verify database connectivity.
5. Validate user access.

### Scenario 2: Database Failure

Steps:

1. Open AWS RDS Console.
2. Select latest snapshot.
3. Restore database instance.
4. Update application connection settings if required.
5. Verify Moodle functionality.

### Scenario 3: Complete Environment Failure

Steps:

1. Recreate infrastructure using Terraform.
2. Restore RDS snapshot.
3. Deploy Moodle application.
4. Validate system functionality.
5. Re-enable user access.

## Testing Recommendation

Backup restoration should be tested periodically to ensure recovery objectives can be achieved.

## Conclusion

The Moodle LMS backup strategy combines AWS managed services, infrastructure automation, and version-controlled application files to support disaster recovery and business continuity.
