#!/bin/bash
kubectl apply -f k8s/app
kubectl apply -f k8s/monitoring
kubectl apply -f k8s/logging
