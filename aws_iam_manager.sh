#!/bin/bash

# Array of IAM user names
IAM_USERS=("DevOpsUser1" "DevOpsUser2" "DevOpsUser3" "DevOpsUser4" "DevOpsUser5")

# Display the users in the array
echo "The following IAM users will be created:"
for user in "${IAM_USERS[@]}"; do
    echo "- $user"
done
#!/bin/bash

#!/bin/bash

# Define IAM users array
IAM_USERS=("user1" "user2" "user3" "user4" "user5")

# Check if 'admin' group exists and create it if not
aws iam get-group --group-name admin > /dev/null 2>&1
if [ $? -ne 0 ]; then
  aws iam create-group --group-name admin
  echo "Created IAM group: admin"
else
  echo "Group 'admin' already exists."
fi

# Attach AdministratorAccess policy to the 'admin' group
aws iam attach-group-policy --group-name admin --policy-arn arn:aws:iam::aws:policy/AdministratorAccess
echo "Attached AdministratorAccess policy to 'admin' group."

# Loop through the IAM_USERS array and create each user if not already created
for USER in "${IAM_USERS[@]}"
do
  # Check if user already exists
  aws iam get-user --user-name "$USER" > /dev/null 2>&1
  if [ $? -ne 0 ]; then
    aws iam create-user --user-name "$USER"
    echo "Created IAM user: $USER"
  else
    echo "User $USER already exists."
  fi

  # Add user to the 'admin' group
  aws iam add-user-to-group --user-name "$USER" --group-name admin
  echo "Assigned user $USER to the 'admin' group"
done

echo "Script completed: Users created (if not already existing) and assigned to the 'admin' group."
