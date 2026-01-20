# CI/CD Pipeline using Jenkins, Docker & AWS EC2

## 📌 Overview
This project demonstrates a simple end-to-end CI/CD pipeline to build, containerize, and deploy a Java application using Jenkins and Docker on AWS EC2. The pipeline automates the build and deployment process whenever code is pushed to GitHub.

---

## 🧰 Tools & Technologies
- Jenkins (CI/CD Automation)
- Docker (Containerization)
- AWS EC2
- Java & Maven
- Git & GitHub
- Linux

---

## 🏗 Architecture
Developer → GitHub → Jenkins → Docker → AWS EC2

---

## 📁 Project Structure

ci-cd-jenkins-docker-aws
├── src/
├── pom.xml
├── Jenkinsfile
├── Dockerfile
├── README.md
└── screenshots/


---

## 🚀 CI/CD Workflow
1. Code is pushed to GitHub
2. Jenkins pipeline is triggered automatically
3. Java application is built using Maven
4. Docker image is created from the build artifact
5. Application is deployed on AWS EC2 using Docker

---

## 🔧 Prerequisites
- AWS EC2 instance (Amazon Linux / Ubuntu)
- Jenkins installed on EC2
- Docker installed on EC2
- Java 11 and Maven installed
- Git installed
- Port **8080** open in EC2 Security Group

---

## 🛠 Setup & Execution

### 1️⃣ Clone Repository

git clone https://github.com/Sadhiq93/ci-cd-jenkins-docker-aws.git

2️⃣ Install Docker

sudo yum install docker -y
sudo systemctl start docker
sudo systemctl enable docker

3️⃣ Jenkins Pipeline Configuration

  Create a Pipeline job in Jenkins

  Select Pipeline script from SCM

  SCM: Git

Repository URL:

https://github.com/Sadhiq93/ci-cd-jenkins-docker-aws.git

  Jenkinsfile path: Jenkinsfile

▶️ Run the Pipeline

Trigger the pipeline manually or by pushing code to GitHub.
Jenkins will automatically build, dockerize, and deploy the application.

🌐 Access Application

http://<EC2-PUBLIC-IP>:8080

📸 Screenshots

<img width="1029" height="548" alt="maven_build_stage" src="https://github.com/user-attachments/assets/1fd76755-de29-4d08-b592-4376e2cfb933" />

<img width="1029" height="548" alt="docker_build_stage" src="https://github.com/user-attachments/assets/249902b2-c653-4a37-8661-f4058a41e950" />

<img width="1190" height="646" alt="Build_success" src="https://github.com/user-attachments/assets/b977df08-6183-4622-9c04-48d7e17575f1" />

<img width="1221" height="450" alt="docker_contianer" src="https://github.com/user-attachments/assets/2ee8df20-c55e-4fa0-875d-c84fab8aa128" />

<img width="986" height="107" alt="login_app" src="https://github.com/user-attachments/assets/630356f0-b4c8-40e8-a98f-4e23e75284dd" />





🎯 Learning Outcomes

  CI/CD automation using Jenkins

  Jenkins Pipeline as Code

  Docker containerization

  Automated deployment on AWS EC2

  End-to-end DevOps workflow understanding
