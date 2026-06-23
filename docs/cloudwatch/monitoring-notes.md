# CloudWatch Monitoring Strategy

## Purpose

Amazon CloudWatch is used to monitor infrastructure health, application performance, and resource utilization for the Moodle Learning Management System.

## Monitored Resources

### EC2 Instance

Metrics:

* CPU Utilization
* Network In
* Network Out
* Disk Read Operations
* Disk Write Operations
* Status Check Failures

Purpose:

* Detect high server load
* Detect performance bottlenecks
* Detect infrastructure failures

---

### RDS MySQL Database

Metrics:

* CPU Utilization
* Database Connections
* Free Storage Space
* Read IOPS
* Write IOPS
* Freeable Memory

Purpose:

* Monitor database health
* Identify resource constraints
* Support capacity planning

---

## Dashboard Components

### Application Layer

* EC2 CPU Usage
* EC2 Network Traffic
* EC2 Status Checks

### Database Layer

* RDS CPU Usage
* RDS Connections
* RDS Storage Utilization

### Availability Monitoring

* Service Health Checks
* Instance Status Monitoring

---

## Alerting Strategy

Recommended Alerts:

### EC2 CPU High

Condition:
CPU Utilization > 80%

Action:
Investigate workload and resource usage.

### Database Connections High

Condition:
Database Connections exceed expected threshold.

Action:
Review application traffic and database performance.

### Storage Low

Condition:
Available storage below 20%.

Action:
Increase storage allocation.

---

## Benefits

* Improved visibility
* Faster troubleshooting
* Capacity planning
* Operational awareness
* Early issue detection

## Future Enhancements

* CloudWatch Alarms
* SNS Notifications
* Grafana Dashboards
* Application Performance Monitoring

## Conclusion

CloudWatch provides centralized monitoring for the Moodle LMS infrastructure and supports proactive operational management.
