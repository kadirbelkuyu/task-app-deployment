output "task_app_service_ip" {
  value = module.task_app.service_ip
}

output "monitoring_service_ip" {
  value = module.monitoring.service_ip
}

output "logging_service_ip" {
  value = module.logging.service_ip
}
