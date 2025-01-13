#!/bin/bash

# Array of IAM user names
IAM_USERS=("DevOpsUser1" "DevOpsUser2" "DevOpsUser3" "DevOpsUser4" "DevOpsUser5")

# Display the users in the array
echo "The following IAM users will be created:"
for user in "${IAM_USERS[@]}"; do
    echo "- $user"
done
