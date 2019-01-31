#!/bin/sh

# following terraform tutorial from https://blog.gruntwork.io/an-introduction-to-terraform-f17df9c6d180

# Export the vars in .env into the shell
export $(egrep -v '^#' .env | xargs)

echo "Access key is: $AWS_ACCESS_KEY_ID"
echo "Secret key is: $AWS_SECRET_ACCESS_KEY"

terraform apply