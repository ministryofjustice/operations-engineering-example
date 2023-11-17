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
COPY requirements.txt requirements.txt
COPY app app

RUN pip3 install --upgrade pip && \
    pip3 install --no-cache-dir --upgrade -r requirements.txt

# ENV PYTHONDONTWRITEBYTECODE 1
# send logs direct to terminal
ENV PYTHONUNBUFFERED 1

# Non-root user
USER 1051

# Port of choice
EXPOSE 1551
# ENV FLASK_APP=app/hello.py
# CMD ["flask", "--app", "app/hello", "run", "--host", "0.0.0.0"]
CMD ["gunicorn", "--bind", "0.0.0.0:1551", "app:create_app()"]

# Use in production hello:app = from hello import app (wsgi callable)
# figure out what gunicorn is expecting...
# ENTRYPOINT gunicorn app:app \
#   --bind 0.0.0.0:1551 \
#   --timeout 120
