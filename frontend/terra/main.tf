provider "kubernetes" {
  config_path = "~/.kube/config"
}
resource "kubernetes_deployment" "react-app" {
  metadata {
    name = "react-app"
    namespace = "default"  # Update namespace if necessary
  }

  spec {
    replicas = 2  # Number of replicas for your React app

    selector {
      match_labels = {
        app = "react"
      }
    }

    template {
      metadata {
        labels = {
          app = "react"
        }
      }

      spec {
        container {
          name  = "react-app"
          image = "abdoubor25/frontend:latest"  # Replace with your React Docker image

          # You can add environment variables or other configuration here
        }
      }
    }
  }
}

resource "kubernetes_service" "react" {
  metadata {
    name = "react-app-service"
  }

  spec {
    selector = {
      app = "react"
    }

    port {
      port = 3000       # Port on which your React app will be accessible within the 
      }
}
}
