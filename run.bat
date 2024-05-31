echo "voting"
kubectl create -f ./Deployments/voting-deploy.yml
kubectl create -f ./Service/voting-service.yml
echo "redis"
kubectl create -f ./Deployments/redis-deploy.yml
kubectl create -f ./Service/redis-service.yml
echo "postgres"
kubectl create -f ./Deployments/postgres-deploy.yml
kubectl create -f ./Service/postgres-service.yml
echo "worker"
kubectl create -f ./Deployments/worker-deploy.yml
echo "results"
kubectl create -f ./Deployments/result-deploy.yml
kubectl create -f ./Service/result-service.yml