---

# Web Stack Monitoring with Datadog

## Overview

This project focuses on setting up monitoring and visualization for a web stack using Datadog. It involves tasks such as signing up for Datadog, installing the Datadog agent, monitoring system metrics, creating alerts, and setting up a dashboard for visualization.

## Tasks

### Task 0: Sign up for Datadog and Install Datadog Agent

1. **Sign up for Datadog:** Head to [Datadog](https://app.datadoghq.com/) and sign up for a free account.
   - Make sure to use the US website (https://app.datadoghq.com).
   - Use the US1 region.
2. **Install Datadog Agent:** Follow the instructions provided on the Datadog website to install the Datadog agent on your server (web-01).
3. **Create Application Key:** Generate an application key in Datadog.
4. **Copy API and Application Keys:** Copy and paste your DataDog API key and DataDog application key into your Intranet user profile.
5. **Verify Server Visibility:** Ensure that your server (web-01) is visible in Datadog under the hostname XX-web-01.
6. **Validate:** Use the provided API to validate server visibility.
7. **Update Hostname:** If necessary, update the hostname of your server.

### Task 1: Monitor Some Metrics

1. **Set Up Monitors:**
   - Monitor read requests per second to the device.
   - Monitor write requests per second to the device.

### Task 2: Create a Dashboard

1. **Create Dashboard:**
   - Create a new dashboard in Datadog.
   - Add at least 4 widgets to the dashboard, monitoring various metrics of your choice.
2. **Dashboard ID:**
   - Create a file named `2-setup_datadog` with the dashboard ID on the first line.
   - Use Datadog's API if needed to get the dashboard ID.

## Repository Details

- **GitHub Repository:** [alx-system_engineering-devops](https://github.com/username/alx-system_engineering-devops)
- **Directory:** `0x18-webstack_monitoring`

## Instructions

1. Clone the repository to your local machine.
2. Complete each task as outlined above.
3. Ensure that all necessary files and configurations are pushed to the repository.
4. Submit your work for review.

## Resources

- [Datadog Documentation](https://docs.datadoghq.com/)
- [System Check Metrics](https://docs.datadoghq.com/integrations/system/)
- [Datadog API Documentation](https://docs.datadoghq.com/api/)
- [Puppet Documentation](https://puppet.com/docs/puppet/latest/puppet_index.html)

---
