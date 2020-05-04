# Kubernetes (Minikube) setup for Crowi
## Requirements
minikube, CPU > 1, memory > 2 GB

## Setup
```
kubectl apply -f ./setup/namespace.yml
```
to create a namespace "crowi-prod."
Then, create a context to use "crowi-prod" namespace.  
Rename ./setup/secrets.yml.sample to ./setup/secrets.yml, and edit the secrets.  
```
kubectl apply -f ./setup/secrets.yml
```
to register the secrets.  
```
kubectl apply -f ./app
```
to start the application.
