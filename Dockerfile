FROM python:3.12.0-alpine3.17

# Set working directory in the container
WORKDIR /app

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
COPY Pipfile Pipfile
COPY Pipfile.lock Pipfile.lock
COPY application application
COPY build.py build.py
COPY config.py config.py

# Install deps and run build
RUN pip3 install --no-cache-dir pipenv==2024.1.0 \
  && pipenv install --system --deploy --ignore-pipfile

RUN pipenv run python3 build.py

# Send logs direct to terminal
ENV PYTHONUNBUFFERED 1

# Non-root user
USER 1051

# Port of choice
EXPOSE 1551

# Use in production, bind to another port so not to run as root
ENTRYPOINT gunicorn application:app \
  --bind 0.0.0.0:1551 \
  --timeout 120
