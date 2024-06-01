#!/bin/bash

USERNAME=YOUR_USERNAME
PASSWORD=YOUR_PASSWORD
CLIENT_ID=YOUR_CLIENT_ID
REGION=us-east-1

aws cognito-idp initiate-auth \
  --auth-flow USER_PASSWORD_AUTH \
  --auth-parameters USERNAME=$USERNAME,PASSWORD=$PASSWORD \
  --client-id $CLIENT_ID \
  --region $REGION