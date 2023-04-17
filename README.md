# Trendyol DevOps Task - E-Commerce Application

This repository contains the Kubernetes infrastructure for an e-commerce application, as well as the CI/CD pipelines for GitHub Actions, GitLab CI/CD, and Jenkins.

## Prerequisites

- Kubernetes Cluster (local, cloud, or hybrid)
- Docker
- kubectl
- CI/CD tool of your choice (GitHub Actions, GitLab CI/CD, or Jenkins)

## Usage

### Building the Application

1. Run the `scripts/build.sh` script to build and push the Docker images for the application services.

### Deploying the Application

1. Ensure your `kubectl` is configured to target the desired Kubernetes cluster.
2. Run the `scripts/deploy.sh` script to deploy the application services, monitoring, and logging components.

### CI/CD

This repository includes CI/CD configurations for the following platforms:

- GitHub Actions: `.github/workflows/main.yml`
- GitLab CI/CD: `.gitlab-ci.yml`
- Jenkins: `Jenkinsfile`

Choose the platform that suits your needs and set up the necessary credentials and configurations.

## Monitoring and Logging

- Prometheus and Grafana are used for monitoring the application's performance and health.
- Fluentd, Elasticsearch, and Kibana (EFK) are used for log management.

## License

MIT

##