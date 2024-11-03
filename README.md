DevOps Web Application Project

Overview : 

This project is a web application with a React front-end and a Python (Flask) back-end.
The app is containerized using Docker and orchestrated with Kubernetes in a Minikube environment.
We use Terraform for infrastructure as code and Jenkins for CI/CD automation, with MySQL for data storage.

Features : 

Docker: Containers are used to package both front-end and back-end applications.
Kubernetes (Minikube): Manages the deployment and scaling of containers.
Terraform: Automates infrastructure setup and provisioning.
Jenkins: CI/CD pipelines for automated builds, tests, and deployments.

Project Structure : 

/docer-composer.yaml
/frontend
├── src/                       # Source files (React)
│   ├── assets/                # Static assets (images, fonts, etc.)
│   │   ├── images/            # Images used in the app
│   │   └── fonts/             # Custom fonts
│   ├── styles/                # CSS or SCSS files
│   │   ├── App.css            # Main styles for App component
│   │   └── chatbot.css         # Styles specific to the Chatbot component
│   ├── components/            # React components
│   │   └── Chatbot.js         # Chatbot UI component
│   ├── pages/                 # Page components
│   │   └── Home.js            # Homepage
│   └── App.js                 # Main frontend file
├── public/
│   └── index.html             # Main HTML file
├── Dockerfile                  # Dockerfile for containerizing frontend
├── package.json                # Dependencies and scripts
├── terra                       # Directory for DevOps-related files
├── Dockerfile              # Dockerfile for deployment
├── deployment2.yml          # Deployment configuration (Kubernetes, etc.)
└── README.md 


/backend
├── /src/main/app/
│   ├── __init__.py            # Initialize Python package
│   ├── chatbot/
│   │   ├── chatbot_controller.py  # Chatbot API logic
│   │   ├── keyword_detection.py   # Logic for keyword detection
│   ├── routes/
│   │   ├── booking_routes.py   # Booking API routes
│   │   ├── destination_routes.py # Destination API routes
│   ├── models/
│   │   ├── database.py         # Database configuration (SQLAlchemy, etc.)
│   │   └── mysql_db.py         # MySQL database connection logic
│   └── main.py                 # Main entry point for the backend (Flask/FastAPI)
├── Dockerfile                  # Dockerfile for containerizing backend
├── sql/                        # Directory for SQL scripts
│   ├── create_tables.sql       # SQL script to create tables
│   ├── seed_data.sql           # SQL script to seed initial data
│   └── migrations.sql          # SQL migration scripts
├── terra                       # Directory for DevOps-related files
├── Dockerfile              # Dockerfile for deployment
├── deployment.yml          # Deployment configuration (Kubernetes, etc.)
├── deployment1.yml          # Deployment configuration (Kubernetes, etc.)
└── README.md 

Prerequisites :

Docker
Kubernetes (Minikube)
Terraform
Jenkins

Setup Instructions : 
git clone https://github.com/thwitcher/DevOps-integration.git

