# Incident Postmortem: Moodle Application Unavailable After EC2 Restart

## Incident Summary

Following a planned shutdown and restart of AWS infrastructure components, the Moodle Learning Management System became inaccessible to users.

## Incident Date

June 2026

## Severity

Medium

## Impact

Users were unable to access the Moodle application through the public IP address.

Affected Services:

* Moodle LMS
* Apache Web Server
* Application Access Layer

Database services remained operational.

## Detection

The issue was detected after attempting to access the Moodle application from a web browser.

Observed Error:

"This site can't be reached"

## Timeline

### Initial State

* EC2 Instance stopped
* RDS Database stopped

### Recovery Attempt

* RDS Database started successfully
* EC2 Instance started successfully

### Issue Identified

Application failed to load correctly through the expected URL path.

### Investigation

The following checks were performed:

* Verified EC2 instance state
* Verified RDS instance state
* Verified Apache service status
* Verified Moodle installation files
* Verified Moodle configuration file
* Verified application URL configuration

### Root Cause

The Moodle application configuration relied on a specific application path and public IP address.

After restarting infrastructure services, application access required verification of:

* EC2 public IP
* Apache availability
* Moodle URL configuration
* Application routing

### Resolution

Actions Taken:

1. Verified Apache service was running.
2. Confirmed Moodle files existed under /var/www/html/moodle.
3. Validated Moodle configuration settings.
4. Verified application URL configuration.
5. Confirmed application accessibility through the correct Moodle path.

### Recovery Time

Approximately 30 minutes.

## Lessons Learned

* Always document application URLs.
* Verify public IP addresses after infrastructure changes.
* Validate service status before troubleshooting application code.
* Maintain recovery documentation for repeatable restoration.

## Preventive Actions

* Implement Route 53 custom domain.
* Enable HTTPS using SSL certificates.
* Create Terraform infrastructure definitions.
* Implement monitoring and alerting.
* Document recovery procedures.

## Conclusion

The outage was resolved through systematic troubleshooting and validation of infrastructure and application configuration. Documentation improvements and infrastructure automation will reduce future recovery time.
