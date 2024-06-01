#!/bin/bash

RESULT=`curl -s -X POST --data @user-pass-data.json \
-H 'X-Amz-Target: AWSCognitoIdentityProviderService.InitiateAuth' \
-H 'Content-Type: application/x-amz-json-1.1' \
https://cognito-idp.us-east-1.amazonaws.com/`

ID_TOKEN=`echo $RESULT | sed 's/.*IdToken":"\([^"]*\).*/\1/'`
echo $ID_TOKEN
DECODED_ID_TOKEN=`echo $ID_TOKEN | base64 -d | jq .`
echo $DECODED_ID_TOKEN