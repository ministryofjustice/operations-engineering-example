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

RUN pip3 install --upgrade pip && \
    pip3 install --no-cache-dir -r requirements.txt

# ENV PYTHONDONTWRITEBYTECODE 1
# send logs direct to terminal
ENV PYTHONUNBUFFERED 1

# Non-root user
USER 1051

EXPOSE 4567
# ENV FLASK_APP=app/hello.py
# CMD ["flask", "--app", "app/hello", "run", "--host", "0.0.0.0"]

# Use in production
ENTRYPOINT gunicorn app:app \
  --bind 0.0.0.0:4567 \
  --timeout 120