FROM python:3.12.0-alpine3.17

# Set working directory in the container
WORKDIR /app/operations-engineering-example

# Set to run as non-root user
RUN addgroup -S appgroup && adduser -S appuser -G appgroup -u 1051

# Add build-base and update existing packages
RUN \
  apk add \
  --no-cache \
  --no-progress \
  --update \
  build-base

# Copy dirs/files from the repo to the container working directory
COPY requirements.txt requirements.txt
COPY app app
# COPY ops_eng_app ops_eng_app

RUN pip3 install --upgrade pip && \
    pip3 install --no-cache-dir --upgrade -r requirements.txt

# Send logs direct to terminal
ENV PYTHONUNBUFFERED 1

# Non-root user
USER 1051

# Port of choice
EXPOSE 1551

# Use in production, bind to another port so not to run as root
ENTRYPOINT gunicorn ops_eng_app:app \
  --bind 0.0.0.0:1551 \
  --timeout 120
