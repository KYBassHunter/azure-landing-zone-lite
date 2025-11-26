# Azure Landing Zone Lite (Terraform)

A simple, opinionated starter "landing zone" for Azure, designed to demonstrate
basic enterprise patterns in a small, easy-to-understand Terraform project.

## What This Deploys

- 1 x Resource Group
- 1 x Virtual Network (`/16`) with 3 subnets:
  - `snet-mgmt` (10.0.0.0/24)
  - `snet-workload` (10.0.1.0/24)
  - `snet-shared` (10.0.2.0/24)
- 1 x Network Security Group for the workload subnet (deny internet inbound, allow VNet)
- 1 x Log Analytics Workspace
- Diagnostic settings to send NSG logs and metrics to Log Analytics
- Standard tags applied to all resources

## Prerequisites

- [Terraform](https://www.terraform.io/downloads.html) >= 1.5
- Azure subscription
- Logged into Azure CLI:

```bash
az login
az account set --subscription "<your-subscription-id>"
