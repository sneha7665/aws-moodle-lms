# ADR-003: Network Security Design

## Status

Accepted

## Date

June 2026

## Context

The Moodle LMS must be accessible to users while protecting backend infrastructure and database resources from unauthorized access.

## Decision

AWS Security Groups were implemented as the primary network access control mechanism.

## Rationale

### Security Controls

* HTTP (80) allowed for web access
* HTTPS (443) planned for secure communication
* SSH (22) restricted to administrator access
* MySQL (3306) restricted to application layer only

### Advantages

* Stateful firewall management
* AWS-native security control
* Easy auditing and modification
* Supports least-privilege access model

## Alternatives Considered

### Open Network Access

Pros:

* Simplified connectivity

Cons:

* Major security risk
* Increased attack surface

### Network ACL Only

Pros:

* Additional network control

Cons:

* More complex management
* Less flexible than Security Groups

## Consequences

Positive:

* Improved security posture
* Controlled access to infrastructure
* Reduced exposure of backend services

Negative:

* Requires ongoing review of access rules

## Final Decision

AWS Security Groups were selected as the primary network security mechanism for the Moodle LMS deployment.
