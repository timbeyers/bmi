#!/bin/bash
echo "ssh into aws instance using default PEM." 

#echo "Pass IP address as first argument."
echo "SSH into a single instance of AWS running."
IP_ADDRESS=$(aws --region us-east-1 ec2 describe-instances   --query "Reservations[*].Instances[*].PublicIpAddress"   --output=text)
echo $IP_ADDRESS
ssh -X -i ~/Documents/bmi/pems/bioc_tim_n_virginia.pem ubuntu@$IP_ADDRESS
