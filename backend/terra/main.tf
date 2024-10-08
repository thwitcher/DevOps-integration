resource "kubernetes_namespace" "backend" {
  metadata {
    name = "backend"
  }
  }

  module "mysql_db" {
  source = "./mysql-db"
  #namespace = kubernetes_namespace.backend.metadata[0].name
}

  module "python_app" {
  source = "./python-app"

  #namespace = kubernetes_namespace.backend.metadata[0].name
}



