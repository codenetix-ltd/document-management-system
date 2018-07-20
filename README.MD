[![Codenetix](https://www.codenetix.com/img/codenetix-logo-light.svg)](https://www.codenetix.com/)

# Laravel 5.6 Document Management System

## Installation

### Requirments

1. docker & docker-compose
2. npm & npm install -g meta

### Steps

```bash
meta git update
meta git checkout dev
make build
make init
make up
```

### Running demo

1. Download docker-compose prod file
    ```bash
    curl https://raw.githubusercontent.com/codenetix-ltd/document-management-system/master/docker-compose-prod.yml > docker-compose-prod.yml
    ```
2. Initiate database
    ```bash
    docker-compose -f docker-compose-prod.yml up init
    ```
3.  Start containers
    ```bash
    docker-compose -f docker-compose-prod.yml up -d proxy
    ```