#!/bin/bash
echo "scp a file (arg 2) to the aws instance specified by IP address (arg 1)"
scp -i ~/Documents/bmi/pems/bioc_tim_n_virginia.pem $2 ubuntu@$1:~
