# Cypress local dev envvironment.

## This repository is an example configuration of dev-containers for a consistent local development environment with Cypress.


This setup of a local environment has the beneits to run Cypress tests in a consistent environment that is exactly the same as all the other developers, CI, and other environments.

The dev container configuration is based on the [devcontainer.json](.devcontainer/devcontainer.json) file.

The dev container loads the [docker/docker-compose.yml](docker/docker-compose.yml). This compose file contains two services:

1. **Application under development / test:** Any web app application that can be served by a local web server.

2. **Cypress GUI:** This is a containerized version of Cypress using the official image from Cypress. 


# Prerequisites:

This setup has been tested on an Ubuntu 22.04 LTS machine.


# Run this example:

## 1. Load the dev container env. 
In VSCode use the command palette and select `Dev Containers: Reopen in Container`.


## 2. Start the application under development server

```bash
# Open a terminal session inside the dev container. 
cd cypress-example-kitchensink
pnpm install
pnpm run dev
```

## 3. Start Cypress GUI

Open Cypress GUI from within the running container into the host machine.  

> **IMPORTANT**: Run the following command in a host terminal session, not inside the dev container terminal. 
```bash
docker exec -it cypress-gui-container cypress open --detached --project . --config video=false
```

Use the Cypress GUI to run specs. 

Run any other Cypress command using the same command structure.

```bash
docker exec -it cypress-gui-container cypress run --spec "cypress/e2e/1-getting-started/todo.cy.js"
```