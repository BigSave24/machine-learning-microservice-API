[![BigSave24](https://circleci.com/gh/BigSave24/machine-learning-microservice-API.svg?style=shield)](https://circleci.com/gh/BigSave24/machine-learning-microservice-API)

# machine-learning-microservice-API

This project will operationalize a machine learning microservice API using a pre-trained, sklearn model to predict housing prices in Boston. The provided Python application will be packaged and imaged for deployment into a Docker container as a microservice. Kubernetes will configured and used to manage the container cluster. Once deplyed, this microservice can be connected to a front-end site to receive and return prediction data. The entire project build and testing will go through a CircleCI pipeline.

### Project Tasks

- Test project code using linting
- Complete Dockerfile to containerize this application
- Deploy containerized application using Docker and make a prediction
- Add addtional the log statements in the source code for this application
- Configure Kubernetes and create a Kubernetes cluster
- Deploy a container using Kubernetes and make a prediction
- Upload completed project to Github repo
- Add CircleCI configuration file and build status badge to indicate that the code has been tested

### Project Files

- **.circleci**: Folder for CircleCi configuration file, config.yml
- **model_data**: Folder holding prediction data files for app
- **output_txt_files**: Folder holding sample output data files
- **.gitignore**: Hide files from git version system
- **Dockerfile**: Used to build out Docker image
- **Makefile**: Used to automate environment setup and lint testing
- **README.md**: Overview of the project
- **app.py**: Main Python applicaion file
- **make_prediction.sh**: Script to run predicion API call
- **requirements.txt**: List of required dependencies to be installed for the Python app
- **run_docker.sh**: Script to run local Docker container
- **run_kubernetes.sh**: Script to run Kubernetes cluster
- **upload_docker.sh**: Script to upload Dockerfile image to Docker Hub

---

## How to Run the Python Scripts and Web App

### Setup Environment

Run the install command from the Makefile to setup the environment.
`make install`

### Lint Test

Run the lint command from the Makefile to analyze the Dockerfile and Python code.
`make lint`

### Create Container Image

Run the docker script to create the Docker container image.
`./run_docker.sh`

### Test Prediction

Run the make prediction script to test the container's functionality.
`./make_prediction.sh`

### Upload Container Image

Run the upload docker script to push the image to Docker Hub.
`./upload_docker.sh`

### Start Kubernetes Cluster

Start the Kubernetes cluster service
`minikube start`

### Create Kubernetes Pod and Deploy Container

Run the run the Kubernetes script create a pod and deploy a docker container to the pod.
`./run_kubernetes.sh`

### Teardown Kubernetes Cluster

Delee the Kubernetes cluster and container.
`minikube delete`
