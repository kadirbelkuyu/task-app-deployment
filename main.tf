provider "kubernetes" {
  config_path = "~/.kube/config"
}

module "task_app" {
  source = "./modules/task_app"
}

module "monitoring" {
  source = "./modules/monitoring"
}

module "logging" {
  source = "./modules/logging"
}
