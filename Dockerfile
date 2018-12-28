FROM hashicorp/terraform:0.11.10 AS terraform
FROM jenkins/jnlp-slave:3.27-1-alpine

USER root
RUN apk --no-cache add make curl ca-certificates openssh bash git py-pip jq gzip zip
COPY --from=terraform /bin/terraform /bin/terraform
RUN pip install --upgrade pip awscli
USER jenkins
