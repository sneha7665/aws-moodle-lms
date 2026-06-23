# Disaster Recovery Plan

## Objective

Recover Moodle LMS services after infrastructure failure.

## Recovery Targets

### Recovery Time Objective (RTO)

30 Minutes

### Recovery Point Objective (RPO)

24 Hours

## Recovery Process

1. Restore RDS Snapshot
2. Launch EC2 Instance
3. Deploy Moodle Application
4. Verify Database Connectivity
5. Verify User Access
6. Validate Application Functionality

## Backup Sources

* RDS Automated Backups
* Moodle Data Directory Backup
* GitHub Repository
* Terraform Definitions

## Lessons Learned

Automation and documentation significantly reduce recovery time.
