### 1. 처음 환경변수 지정
```bash
export KARPENTER_NAMESPACE="kube-system"
export KARPENTER_VERSION="1.5.0"
export K8S_VERSION="1.32"
export AWS_PARTITION="aws"
export CLUSTER_NAME="<CLUSTER_NAME>"
export AWS_DEFAULT_REGION="ap-northeast-2"
export AWS_ACCOUNT_ID="$(aws sts get-caller-identity --query Account --output text)"
export TEMPOUT="$(mktemp)"
```

### 2. install.sh 실행 후 아래 진행
```bash
export CLUSTER_ENDPOINT="$(aws eks describe-cluster --name "${CLUSTER_NAME}" --query "cluster.endpoint" --output text)"
export KARPENTER_IAM_ROLE_ARN="arn:${AWS_PARTITION}:iam::${AWS_ACCOUNT_ID}:role/${CLUSTER_NAME}-karpenter"
```
