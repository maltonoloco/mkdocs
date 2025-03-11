# MKDocs Docker Setup

This repository contains a Docker-based setup for an [MkDocs](https://www.mkdocs.org/) project. You can use this configuration to build and serve your MkDocs documentation in a containerized environment.

---

## Repository Structure

```bash
.
├── config
├── container.pub
├── Dockerfile
├── docker-compose.yml
├── docs
├── id_ed25519
├── mkdocs.yml
└── README.md
```

- **docs/**  
  Contains all your MkDocs content files (Markdown files, images, etc.). These files are also available at [github.com/maltonoloco/mkdocs_test_doc](https://github.com/maltonoloco/mkdocs_test_doc).

- **mkdocs.yml**  
  The main MkDocs configuration file. Customize site settings, plugins, and themes here.

- **config**  
  An SSH config file used within the Docker container to set up SSH-based operations (e.g., Git pulls, GitHub access).

- **id_ed25519**  
  A secret key used for GitHub authorization inside the Docker container. **Make sure you handle this securely** and consider excluding it from version control in real-world scenarios.

- **container.pub**  
  The public key associated with `id_ed25519`.

- **Dockerfile**  
  Defines the image that will be used to build and serve the MkDocs documentation. Installs necessary dependencies and configures SSH.

- **docker-compose.yml**  
  Defines services for running MkDocs in Docker. This file references the Dockerfile and manages container creation, networking, volumes, etc.

- **README.md**  
  This file.

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
docker-compose up
```

By default, MkDocs will be served from inside the container on port 8000. Open [http://localhost](http://localhost) in your browser to view the documentation.
