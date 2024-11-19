FROM owasp/zap2docker-stable:latest
RUN apt-get update && apt-get install -y \
    curl \
    jq
