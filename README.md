# datascience-stack
This repository is to experiment with different data science technologies locally.


## Prerequisites
- Docker
- Make

## Setup

The `Makefile` in this repostiory acts as the operator file. Use the `make` command to interact with the different datascience technologies stacks

### Jupyter Notebook
To deploy Jupyter Notebook with a MSSQL Server run `make deploy` to deploy the containers, followed by `make start-jupyter` to start the notebook. This will output a URL where you can view the newly deployed jupyter notebook locally.

## References
- https://github.com/chrisgschon/docker-for-ds
- https://github.com/garystafford/pyspark-setup-demo
- https://github.com/jupyter/docker-stacks
