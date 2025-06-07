ACCOUNT_ID=`aws sts get-caller-identity --query  Account --output text`
REPO_NAME=app
IMAGE_TAG=v1.0.0
aws ecr get-login-password --region ap-northeast-2 | docker login --username AWS --password-stdin $ACCOUNT_ID.dkr.ecr.ap-northeast-2.amazonaws.com
docker build -t $ACCOUNT_ID.dkr.ecr.ap-northeast-2.amazonaws.com/$REPO_NAME:$IMAGE_TAG
docker push $ACCOUNT_ID.dkr.ecr.ap-northeast-2.amazonaws.com/$REPO_NAME:$IMAGE_TAG
