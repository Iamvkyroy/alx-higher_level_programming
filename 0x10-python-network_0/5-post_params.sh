#!/bin/bash

# Check if a URL is provided as an argument
if [ $# -ne 1 ]; then
  echo "Usage: $0 <URL>"
  exit 1
fi

# URL to send the POST request to
URL="$1"

# Variables to send in the POST request
email="test@gmail.com"
subject="I will always be here for PLD"

# Send the POST request using curl
response=$(curl -s -X POST "$URL" \
  -d "email=$email" \
  -d "subject=$subject")

# Check if curl was successful
if [ $? -eq 0 ]; then
  echo "Response body:"
  echo "$response"
else
  echo "Failed to send POST request to $URL"
  exit 1
fi
