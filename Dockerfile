FROM atlassian/default-image:2.02
MAINTAINER Andrew Kwan

# Install pip and aws cli
RUN apt-get update && apt-get install -y \
    python-pip \
    jq \
  && pip install awscli \
  && pip install awsebcli \
  && rm -rf /var/lib/apt/lists/*

ENTRYPOINT ["aws"]
