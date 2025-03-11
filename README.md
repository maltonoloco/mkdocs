# MKDocs Docker Setup

This repository contains a Docker-based setup for an [MkDocs](https://www.mkdocs.org/) project. You can use this configuration to build and serve your MkDocs documentation in a containerized environment.

---

## Repository Structure

```bash
.
├── Dockerfile
├── docker-compose.yml
├── entrypoint.sh
├── mkdocs.yml
└── README.md
```

- **mkdocs.yml**  
  The main MkDocs configuration file. Customize site settings, plugins, and themes here.

- **Dockerfile**  
  Defines the image that will be used to build and serve the MkDocs documentation. Installs necessary dependencies and configures SSH.

- **docker-compose.yml**  
  Defines services for running MkDocs in Docker. This file references the Dockerfile and manages container creation, networking, volumes, etc.

- **README.md**  
  This file.

- **entrypoint.sh**
  Clones or pulls the content of [this repository](https://github.com/maltonoloco/mkdocs_test_doc) in /docs inside the docker container everytime the container starts.

---

## Getting Started

### Prerequisites

- [Docker](https://www.docker.com/)
- [Docker Compose](https://docs.docker.com/compose/)

### Clone the Repository

```bash
git clone https://github.com/maltonoloco/mkdocs
cd mkdocs
```


### Run the Container

```bash
mkdir docs # create docs directory
docker-compose up -d
```

- **docs/**  
  Contains all your MkDocs content files (Markdown files, images, etc.). These files are also available at [mkdocs_test_doc repository](https://github.com/maltonoloco/mkdocs_test_doc).

# Github Pages

The Documentation with versioning is [here](https://maltonoloco.github.io/mkdocs_test_doc/latest) available
