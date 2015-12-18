#!/bin/bash
echo "calling aws ec2 describe-instances from one of the regions (default=us-east-1)"
aws --region us-east-1 ec2 describe-instances   --query "Reservations[*].Instances[*].PublicIpAddress"   --output=text
