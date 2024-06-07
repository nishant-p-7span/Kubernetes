# How to attach local directory to Minikube pods.
- First of all you can't, Resone: `if you are running kubernetes on the winodows minikube docker then minikube is container, so all the directiry in the container can only be accesible not the local one`.
## What are the solutions?
- we create the files inside the minikube container.
  ```docker exec -it <container_name> sh```
- create a one directory and copy paste the files which are require.
> In my case, I need to connect this directory to the mysql pod to `docker-entrypoint-initdb.d` for initialize the sql.
> so i create one directory `/imp/data` then copy `1.sql` to it.
- now need to add following configuration to the `.yml` files.
```
spec:
  containers:
    - name: mysql
        ...
      volumeMounts:
        - name: start-sh
          mountPath: /docker-entrypoint-initdb.d
  volumes:
        - name: start-sh
          hostPath:
            path: "/imp/data"
            type: Directory
```
- You might encouter error like: `MountVolume.SetUp failed for volume "kube-api-access-gs8r8" : failed to sync configmap cache: timed out waiting for the condition`
- just ignore it, in my case it worked fine even after this error.
