# Operations Engineering Example Application

[![repo standards badge](https://img.shields.io/endpoint?labelColor=231f20&color=005ea5&style=for-the-badge&label=MoJ%20Compliant&url=https%3A%2F%2Foperations-engineering-reports.cloud-platform.service.justice.gov.uk%2Fapi%2Fv1%2Fcompliant_public_repositories%2Fendpoint%2Foperations-engineering-example&logo=data:image/png;base64,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)](https://operations-engineering-reports.cloud-platform.service.justice.gov.uk/public-report/operations-engineering-example)

This repository contains an example application demonstrating Operations Engineering application standards to follow when deploying to the Cloud Platform and using the following tools; flask, docker, helm. Intended to be used as an evolving template.

## Table of Contents

1. [Prerequisites](#prerequisites)
1. [How to use](#how-to-use)
1. [Updating dependencies](#updating-dependencies)
1. [Generic settings](#generic-settings)
1. [Deployment](#deployment)
1. [Contributing](#contributing)
1. [Contact](#contact)
1. [License](#license)

## Prerequisites

To develop, deploy or run this app you will need to install:

- [Python 3.12](https://www.python.org/downloads/release/python-3120/)
- [Docker](https://www.docker.com/) and [Docker Compose](https://docs.docker.com/compose/) *(Optional, for running a local AWS DynamoDB instance or development/production servers with Docker Compose)*
- [Helm](https://helm.sh/) and [Kubectl](https://kubernetes.io/docs/tasks/tools/install-kubectl/) *(Optional, for deploying to Cloud Platform)*


## How to use

### Create a new application

We rely on naming conventions to facilitate use of this template. All Operations Engineering applications are named in the form `<TEAM_NAME>-<NAME>`, where `TEAM_NAME=operations-engineering`, hence `operations-engineering-example`, `operations-engineering-reports` etc. This convention is followed throughout the code in the kubernetes namespace, helm chart, and GitHub deployment workflows. Thus to create a new application choose the value of `<NAME>` and proceed,

- Create a repo called `<TEAM_NAME>-<NAME>`, for example, `operations-engineering-example`
- Copy the contents of this repo into it and make the following changes

    1. In `.github/workflows/deploy-to-dev.yml` and `.github/workflows/deploy-to-prod.yml` update the value of `NAME` under the `env` section at the top of the file:

        ```   
        env:
          TEAM_NAME: operations-engineering
          NAME: example
          ENV: dev
        ```
    1. Update the subdirectory `helm/operations-engineering-example` to `helm/<TEAM_NAME>-<NAME>`, this is the helm chart name.
    1. In `helm/Chart.yaml` update the value of `name` with `<TEAM_NAME>-<NAME>`. 
    1. In `helm/<TEAM_NAME>-<NAME>/values.yaml` update the values of `teamName` and `name` at the top of the file with `<TEAM_NAME>` and `<NAME>` respectively.
    1. In `config.py` update as required, for example `CONTACT_EMAIL`, `SERVICE_NAME`, `SERVICE_URL`. This file provides configuration for the GOVUK frontend.
    1. Update `README.md`.

- Create Cloud Platform namespaces called  `<TEAM_NAME>-<NAME>-<ENV>` for example, `operations-engineering-example-dev` and `operations-engineering-example-prod` and link to the repo. Follow instructions here: [Creating a Cloud Platform environment](https://user-guide.cloud-platform.service.justice.gov.uk/documentation/getting-started/env-create.html#creating-a-cloud-platform-environment).
- The app is available at `<TEAM_NAME>-<NAME>-<ENV>.cloud-platform.service.justice.gov.uk`

### Updating dependencies

This app is set up with dependabot to automatically raise PRs to update dependencies. Note that the `govuk-frontend` package version is hardcoded in `build.py` and `application/templates/components/base.html`, which must be updated manually if another version is required. The version of `govuk-frontend` is determined by the version of `govuk-frontend-jijna` set in the `requirements.txt` file. The current verison of `govuk-frontend` is recorded in `application/static/VERSION.txt`. For example, `govuk-frontend-jinja` 2.7.0 requires `govuk-frontend` 4.7.0.

### Generic settings

The flask app itself is deliberately generically named `application` and does not need to be changed. If you choose to change it then corresponding changes are required in `build.py`, `Dockerfile`, `makefile` and possibly elsewhere. The app is hardcoded to run and listen on port `1551` as appuser `1051` (see `Dockerfile` and `compose.yaml`).

See below for how deployment to dev and prod is triggered. 


## Deployment

### Development environment

The development namespace for this project is called `operations-engineering-example-dev`.

A merge to the `main` branch triggers the `deploy-to-dev` workflow. This runs a `helm upgrade` command to update the deployment.

To deploy manually, follow the steps in the [deploy-to-dev](https://github.com/ministryofjustice/operations-engineering-example/blob/main/.github/workflows/deploy-to-dev.yml) GitHub workflow.

The development app is available at: https://operations-engineering-example-dev.cloud-platform.service.justice.gov.uk/

Access information on the deployment in Cloud Platform using `kubectl` or `helm`, for example;

```bash
kubectl -n operations-engineering-example-dev get pods
helm -n operations-engineering-example-dev list
helm -n operations-engineering-example-dev history operations-engineering-example-dev
```

### Production environment

The production namespace on [Cloud Platform](https://user-guide.cloud-platform.service.justice.gov.uk/documentation/concepts/what-is-the-cloud-platform.html) for this project is called `operations-engineering-example-prod`.

To deploy the app to the production namespace do the following:

- Switch to the `main` branch and ensure it is up to date.
- Create a new tag using `git tag vx.y.z` where `x.y.z` is the new version number, and the `v` prefix provides the match criterion to trigger deployment. Please follow [semantic versioning](https://semver.org/).
- Push the tag to the remote repository using `git push origin --tags`

This triggers the `deploy-to-prod` GitHub workflow to create a release and deploy the app to the production namespace.

The production app is available at: https://operations-engineering-example-prod.cloud-platform.service.justice.gov.uk/

## Contributing

Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

Please update tests as appropriate.

## Contact

If you have any questions or need further clarification, feel free to ask in the [#ask-operations-engineering](https://moj.enterprise.slack.com/archives/C01BUKJSZD4) channel on Slack or email us at operations-engineering@digital.justice.gov.uk.

## License

This project is licensed under the MIT License - see the LICENSE file for details.

