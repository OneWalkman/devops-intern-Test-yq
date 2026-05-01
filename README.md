<<<<<<< HEAD
# DevOps Intern Final Project

[![CI](https://github.com/OneWalkman/devops-intern-Test-yq/actions/workflows/ci.yml/badge.svg)](https://github.com/OneWalkman/devops-intern-Test-yq/actions/workflows/ci.yml)

Name: Yiqing Zhang
Date: May 1, 2026

## Project Description

This repository contains a small but realistic DevOps workflow built with open-source tools.

The project covers:

- Git and GitHub setup
- Linux scripting basics
- Docker containerization
- CI/CD with GitHub Actions
- Job deployment with Nomad
- Monitoring with Grafana Loki
- Extra credit: MLflow tracking

## Step 1: Git & GitHub Setup

This step initializes the GitHub repository and adds a simple Python script.

Run the sample script:

```bash
python hello.py
```

Expected output:

```text
Hello, DevOps!
```

## Step 2: Linux & Scripting Basics

The `scripts/sysinfo.sh` script prints basic system information:

- Current user
- Current date
- Disk usage

Run the script from Linux, WSL, Git Bash, or another Bash-compatible shell:

```bash
bash scripts/sysinfo.sh
```

If executable permissions are available in your environment, you can also run:

```bash
./scripts/sysinfo.sh
```

## Step 3: Docker Basics

The `Dockerfile` containerizes `hello.py` and runs it automatically when the container starts.

Build the image:

```bash
docker build -t devops-intern-test-yq:latest .
```

Run the container:

```bash
docker run --rm devops-intern-test-yq:latest
```

Expected output:

```text
Hello, DevOps!
```

## Step 4: CI/CD with GitHub Actions

The GitHub Actions workflow in `.github/workflows/ci.yml` runs automatically on every push and pull request.

The workflow:

1. Checks out the repository.
2. Sets up Python.
3. Runs `python hello.py`.

The status badge at the top of this README links to the workflow page.

## Step 5: Job Deployment with Nomad

The Nomad job file is located at:

```text
nomad/hello.nomad
```

Because this project uses a local Docker image, build the image before running the Nomad job:

```bash
docker build -t devops-intern-test-yq:latest .
nomad job run nomad/hello.nomad
```

Check the job status:

```bash
nomad job status hello-devops
```

Stop the job:

```bash
nomad job stop hello-devops
```

## Step 6: Monitoring with Grafana Loki

Monitoring setup notes are documented in:

```text
monitoring/loki_setup.txt
```

The notes include:

- How to start Loki locally with Docker
- How to run the application container with Loki log labels
- How to query logs from Loki
- Where to place optional screenshots

## Extra Credit: MLflow Tracking

The `mlflow/` folder contains a dummy MLflow experiment.

Install dependencies:

```bash
pip install -r mlflow/requirements.txt
```

Run the dummy experiment:

```bash
python mlflow/experiment.py
```

Start the MLflow UI:

```bash
mlflow ui --backend-store-uri mlruns
```

Then open:

```text
http://127.0.0.1:5000
```

## Repository Structure

```text
.
├── .github/workflows/ci.yml
├── Dockerfile
├── README.md
├── hello.py
├── mlflow/
│   ├── experiment.py
│   └── requirements.txt
├── monitoring/
│   └── loki_setup.txt
├── nomad/
│   └── hello.nomad
└── scripts/
    └── sysinfo.sh
```
=======
# devops-intern-Test-yq
devops-intern-final, a test project for evaluation
>>>>>>> d7fb1414bc572b193cccc05f8d0cee9d227d179e
