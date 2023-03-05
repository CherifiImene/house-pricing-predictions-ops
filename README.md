[![CircleCI](https://dl.circleci.com/status-badge/img/gh/CherifiImene/project-ml-microservice-kubernetes/tree/main.svg?style=svg)](https://dl.circleci.com/status-badge/redirect/gh/CherifiImene/project-ml-microservice-kubernetes/tree/main)

## Project Summary

This repository is a Flask application that predicts housing prices in Boston according to several features, such as  such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. Additionally, it provides the needed script to operationalize this app and run it on Docker and Kubernetes.

The data used in this project was initially taken from Kaggle, on [the data source site](https://www.kaggle.com/c/boston-housing).
Feel Free to extended this project to any pre-trained machine learning model, such as those for image recognition and data labeling.

## Setup the Environment

* Create a virtualenv with Python 3.7 and activate it. Refer to this link for help on specifying the Python version in the virtualenv. 
```bash
python3 -m pip install --user virtualenv
# You should have Python 3.7 available in your host. 
# Check the Python path using `which python3`
# Use a command similar to this one:
python3 -m virtualenv --python=<path-to-Python3.7> .devops
source .devops/bin/activate
```
* Run `make install` to install the necessary dependencies

### Running `app.py`

1. Standalone:  `python app.py`
2. Run in Docker:  `./run_docker.sh`
3. Run in Kubernetes:  `./run_kubernetes.sh`

### Kubernetes Steps

* Setup and Configure Docker locally
* Setup and Configure Kubernetes locally
* Create Flask app in Container
* Run via kubectl

## Folders and Files Description

1. model_data: Contains the dataset along with the pre-trained model
2. output\_txt\_files: Contains the Docker and Kubernetes Log files
3. .circleci: Contains config file for the circleci CI/CD pipeline
4. Dockerfile: The file that creates the docker container for the app
5. Makefile: File that automates linting, installing dependencies and testing the app
6. requirements.txt: Contains the set of dependencies that are necessary for the app
7. make_predictions.sh: Script that calls the API to make predictions
8. run_kubernetes.sh: Script to run the app on Kubernetes
9. run_docker.sh: Script to run the app on Docker
10. upload_docker.sh: Script to upload local Docker container to Docker Hub
