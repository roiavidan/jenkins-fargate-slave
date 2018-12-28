# Jenkins JNLP Agent for Fargate

This Docker image is based on [Jenkins JNLP Agent Docker image](https://hub.docker.com/r/jenkins/jnlp-slave/) and adds the following tools:
- Terraform 0.11.10
- CLI tools: make curl bash git python pip jq gzip zip
- AWS CLI

It is intended to be run as an AWS Fargate task using Jenkins' [ECS Plugin](https://github.com/jenkinsci/amazon-ecs-plugin).
