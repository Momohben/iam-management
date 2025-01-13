# iam-management
A shell script for automating AWS IAM user and group management, including user creation, group assignment, and administrative policy attachment
# AWS IAM Management Script

## Overview
This script automates the creation of IAM users, IAM groups, and assignment of policies using AWS CLI. It is designed to facilitate managing users and permissions for CloudOps teams, particularly DevOps teams, in a cloud infrastructure.

## Purpose
The purpose of this script is to:
- Create multiple IAM users.
- Create an IAM group named `admin`.
- Attach the `AdministratorAccess` policy to the `admin` group.
- Assign IAM users to the `admin` group.

## Features
- Checks if the IAM group `admin` exists before creating it.
- Checks if IAM users already exist before attempting to create them.
- Attach `AdministratorAccess` policy to the `admin` group.
- Assigns users to the `admin` group.

## Prerequisites
- AWS CLI must be installed and configured.
- The IAM user running the script must have sufficient permissions (e.g., `AdministratorAccess`).

## How to Use
1. **Ensure AWS CLI is configured**:
   - Run `aws configure` to configure the CLI with your credentials.

2. **Run the Script**:
   - Clone this repository to your local machine.
   - Navigate to the directory where the script is located.
   - Execute the script:
     ```bash
     bash aws_iam_manager.sh
     ```

3. The script will:
   - Create users (`user1` to `user5`).
   - Create the `admin` group (if it doesn't exist).
   - Attach the `AdministratorAccess` policy to the group.
   - Add the users to the `admin` group.

## Notes
- The script will skip user creation if the user already exists.
- The script will skip group creation if the group already exists.

## Conclusion
This script streamlines the process of managing IAM resources for DevOps teams, making it easier to scale the user base and manage access permissions in AWS.


