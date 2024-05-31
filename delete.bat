echo "voting"
kubectl delete -f ./Deployments/voting-deploy.yml
kubectl delete -f ./Service/voting-service.yml
echo "redis"
kubectl delete -f ./Deployments/redis-deploy.yml
kubectl delete -f ./Service/redis-service.yml
echo "postgres"
kubectl delete -f ./Deployments/postgres-deploy.yml
kubectl delete -f ./Service/postgres-service.yml
echo "worker"
kubectl delete -f ./Deployments/worker-deploy.yml
echo "results"
kubectl delete -f ./Deployments/result-deploy.yml
kubectl delete -f ./Service/result-service.yml