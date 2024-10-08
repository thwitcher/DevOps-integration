resource "kubernetes_deployment" "python_app" {
  metadata {
    name = "python-app"
  }

  spec {
    replicas = 1

    selector {
      match_labels = {
        app = "python-app"
      }
    }

    template {
      metadata {
        labels = {
          app = "python-app"
        }
      }

      spec {
        container {
          name  = "backend"
          image = "abdoubor25/backend:latest" 
          env {
            name  = "DATABASE_URL"  # Assuming you have a DATABASE_URL environment variable for your app
            value = "mysql://ubuntu:ubuntu@db:3306/projetdb"  # Adjusted for MySQL connection
          }
          env {
            name  = "DATABASE_USERNAME"  # Add any other environment variables your Python app needs
            value = "ubuntu"           # Replace with actual value
          }
          port {
            container_port = 5000  # Assuming your Python backend runs on port 5000
          }
        }
      }
    }
  }
}

resource "kubernetes_service" "python_app" {
  metadata {
    name = "python-app-service"
  }

  spec {
    selector = {
      app = "python-app"
    }

    port {
      port = 5000       # The port to expose for the service
      target_port = 5000       # The port on the container
    }
    type = "NodePort"   
  }
}
