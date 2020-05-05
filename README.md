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

## Backup
To make backups,
```
kubectl apply -f ./jobs/backup.yml
```
This command creates a cron job which uploads a backup of the database to AWS S3 at 0:00 everyday.