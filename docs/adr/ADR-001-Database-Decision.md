# ADR-001: Database Selection for Moodle LMS

## Status

Accepted

## Date

June 2026

## Context

Moodle requires a relational database for storing user accounts, courses, grades, assignments, logs, and application metadata.

The database solution needed to:

* Support Moodle officially
* Integrate with AWS services
* Provide automated backups
* Be reliable for production workloads
* Minimize operational overhead

## Decision

Amazon RDS MySQL was selected as the primary database service.

## Rationale

### Advantages

* Fully managed database service
* Automated backups and snapshots
* Automated patching
* Native AWS integration
* Moodle officially supports MySQL
* Easier administration compared to self-managed MySQL on EC2

### Alternatives Considered

#### Self-Managed MySQL on EC2

Pros:

* Lower direct service cost

Cons:

* Manual backups
* Manual patching
* Increased operational complexity
* Higher risk of data loss

#### Amazon Aurora MySQL

Pros:

* Higher availability
* Better scalability

Cons:

* Higher cost
* Not necessary for current project scope

## Consequences

Positive:

* Reduced maintenance effort
* Reliable backup strategy
* Easier disaster recovery

Negative:

* Monthly RDS cost
* Dependency on AWS managed services

## Final Decision

Amazon RDS MySQL was selected as the database layer for the Moodle Learning Management System deployment.
