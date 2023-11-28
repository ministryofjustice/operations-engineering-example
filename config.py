import os


class Config(object):
    CONTACT_EMAIL = "operations_engineering@digital.justice.gov.uk"
    # CONTACT_PHONE = os.environ.get("CONTACT_PHONE")
    DEPARTMENT_NAME = "Ministry of Justice"
    # DEPARTMENT_URL = os.environ.get("DEPARTMENT_URL")
    # RATELIMIT_HEADERS_ENABLED = True
    # RATELIMIT_STORAGE_URI = os.environ.get("REDIS_URL")
    # SECRET_KEY = os.environ.get("SECRET_KEY")
    SERVICE_NAME = "Operations Engineering Flask App Template"
    SERVICE_PHASE = "Dev"
    SERVICE_URL = "https://operations-engineering-example.cloud-platform.service.justice.gov.uk/home"
    # SESSION_COOKIE_HTTPONLY = True
    # SESSION_COOKIE_SECURE = True
