#!/bin/sh
CFN_STACK_NAME=RaiseTech
FILE_PATH=cloudformation

aws cloudformation deploy --stack-name "${CFN_STACK_NAME}-vpc" \
--template-file "${FILE_PATH}/vpc.yml"

aws cloudformation deploy --stack-name "${CFN_STACK_NAME}-sg" \
--template-file "${FILE_PATH}/sg.yml"

aws cloudformation deploy --stack-name "${CFN_STACK_NAME}-eip" \
--template-file "${FILE_PATH}/eip.yml"

aws cloudformation deploy --stack-name "${CFN_STACK_NAME}-iam" \
--template-file "${FILE_PATH}/iam.yml" --capabilities CAPABILITY_NAMED_IAM

aws cloudformation deploy --stack-name "${CFN_STACK_NAME}-ec2" \
--template-file "${FILE_PATH}/ec2.yml" --capabilities CAPABILITY_NAMED_IAM

aws cloudformation deploy --stack-name "${CFN_STACK_NAME}-elb" \
--template-file "${FILE_PATH}/elb.yml"

aws cloudformation deploy --stack-name "${CFN_STACK_NAME}-rds" \
--template-file "${FILE_PATH}/rds.yml"

aws cloudformation deploy --stack-name "${CFN_STACK_NAME}-s3" \
--template-file "${FILE_PATH}/s3.yml"
