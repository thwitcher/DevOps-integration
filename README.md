# 🌐 DevOps Web Application Project

**A full-stack web application integrating modern DevOps practices for seamless development, deployment, and scaling.**

---

## 📖 Overview

This project is a full-stack web application with:
- A **React** front-end for an intuitive user interface.
- A **Python (Flask)** back-end to handle the server-side logic.

The app is:
- **Containerized** using **Docker**.
- **Orchestrated** with **Kubernetes** in a **Minikube** environment.
- Managed through **Terraform** for infrastructure as code (IaC).
- Deployed with **Jenkins** for automated CI/CD pipelines.
- Backed by **MySQL** for data storage.

---

## ✨ Features

- **Docker**: Containers package and isolate the front-end and back-end applications.
- **Kubernetes (Minikube)**: Orchestrates deployment, scaling, and management of containers.
- **Terraform**: Automates infrastructure setup and provisioning for consistent environments.
- **Jenkins**: Implements CI/CD pipelines for automated builds, tests, and deployments.
- **MySQL**: Stores application data securely and efficiently.

---

## 🗂️ Project Structure

Below is a visual representation of the project architecture:

![image](https://github.com/user-attachments/assets/e41577ab-cbf7-4636-9745-3b462489b1d2)

## 🛠️ Prerequisites

Before you begin, ensure you have the following installed on your system:
- [Docker](https://www.docker.com/)
- [Kubernetes (Minikube)](https://minikube.sigs.k8s.io/docs/start/)
- [Terraform](https://www.terraform.io/)
- [Jenkins](https://www.jenkins.io/)

---

## 🚀 Setup Instructions

### Step 1: Clone the repository
```bash
git clone https://github.com/thwitcher/DevOps-integration.git
cd DevOps-integration
````
## 🚀 Setup Instructions

### Step 2: Build and Run Docker Containers

#### Front-end
```bash
cd frontend
docker build -t devops-frontend .
docker run -p 3000:3000 devops-frontend
````
####Back-end
````bash
cd backend
docker build -t devops-backend .
docker run -p 5000:5000 devops-backend
````
## Step 3: Set Up Minikube
```bash
minikube start
kubectl apply -f kubernetes-manifests/
````
## Step 4: Provision Infrastructure with Terraform
````bash
cd terraform
terraform init
terraform apply
````
## Step 5: Configure CI/CD with Jenkins
Access Jenkins via http://localhost:8080.
Set up pipelines using the provided Jenkinsfile:
````bash
cat Jenkinsfile
````
## 📊 Output and Results
Front-End: Access the React app via http://localhost:3000.
Back-End: API endpoints available at http://localhost:5000.
Jenkins: CI/CD pipelines visualize build/test/deploy progress.
## 🤝 Contributing
We welcome contributions! Feel free to fork this repository and submit pull requests.

## 📜 License
No licence included, feel free to use it ! 
## 👨‍💻 Author
Developed by Abderrahmen Borchani.

For questions or feedback, reach out at borchani.abderrahmen25@gmail.com.

