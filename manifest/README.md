```bash
kubectl create ns app
```
```bash
kubectl label namespace <namespace> elbv2.k8s.aws/pod-readiness-gate-inject=enabled
```
### deployment를 v2로 배포하고, v2가 배포가 끝나면 v1을 삭제하는 방식으로 
