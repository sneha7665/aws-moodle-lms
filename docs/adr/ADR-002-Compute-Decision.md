# ADR-002: Compute Platform Selection

## Status

Accepted

## Date

June 2026

## Context

The Moodle application requires a web server capable of hosting PHP applications, handling user requests, connecting to the database layer, and integrating with AWS networking services.

The compute platform needed to:

* Support PHP 8.x
* Run Apache web server
* Support Moodle requirements
* Integrate with AWS infrastructure
* Remain cost-effective for learning and demonstration purposes

## Decision

Amazon EC2 was selected as the application hosting platform.

## Rationale

### Advantages

* Full control over operating system configuration
* Supports Apache, PHP, and Moodle requirements
* Easy integration with VPC, Security Groups, and RDS
* Flexible instance sizing
* Suitable for Infrastructure as Code deployments using Terraform

### Alternatives Considered

#### AWS Elastic Beanstalk

Pros:

* Managed deployment platform
* Automatic scaling

Cons:

* Less control over underlying infrastructure
* Additional abstraction layer

#### AWS ECS / Kubernetes

Pros:

* Containerized deployment
* High scalability

Cons:

* Increased complexity
* Not required for current project scale

## Consequences

Positive:

* Complete control over server configuration
* Easy troubleshooting
* Direct access for administration

Negative:

* Requires OS maintenance
* Requires patch management
* Requires monitoring setup

## Final Decision

Amazon EC2 was selected as the compute platform for hosting the Moodle Learning Management System.
