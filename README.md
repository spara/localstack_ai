# Localstack AI

Localstack AI is a containerized environment for experimenting and building AI applications. It supports running open source foundation models in [Ollama](https://ollama.ai/). Included are a [minimal Jupyter notebook](https://jupyter-docker-stacks.readthedocs.io/en/latest/using/selecting.html#jupyter-minimal-notebook) and PostgreSQL with [pgvector](https://supabase.com/docs/guides/database/extensions/pgvector).

Also included are Python packages for OpenAI and AWS Bedrock.

## Pre-requisites

- [Docker](https://www.docker.com/)
- [Docker compose](https://docs.docker.com/compose/install/)

## Optional: If you want to build pgvector 
  
There isn't an official image for pgvector. You can build it from source. Clone the repository.

```bash
$ cd ./pgvector
$ git clone https://github.com/pgvector/pgvector/tree/master
```

## Start a stack

Localstack AI supports Ollama and Llamfile and creates a separate stack for each. You will need to download an LLM for each stack respectively.

> Download models for [Ollama](https://ollama.ai/library).

> Download models in GGUF format for Lllamafile from [Huggingface](https://huggingface.co/models).

To start a stack with built images:

```bash
$ docker compose -f ollama_stack.yml up
```
or

```bash
$ docker compose -f llamafile_stack.yml up
```

To start the Ollama stack and build PostgreSQL with pgvector:

```bash
$ docker compose -f buildstack-pgvector-build.yml up
```

## To stop the stack

To stop the stack:

```bash
$ docker compose -f buildstack.yml down
```

To stop the stack and build PostgreSQL with pgvector:

```bash
$ docker compose -f buildstack-pgvector-build.yml down
```

## Running Jupyter Notebook

Docker compose outputs the messages to stdout. It will post the link and token to Jupyter notebook. Copy the appropriate link and paste into a browser. For example:

```bash
jupyter-1  |     To access the server, open this file in a browser:
jupyter-1  |         file:///home/jovyan/.local/share/jupyter/runtime/jpserver-6-open.html
jupyter-1  |     Or copy and paste one of these URLs:
jupyter-1  |         http://9faab81c039c:8888/lab?token=4d0ce25e42fd2211f4aa0b68536ff5b95b15145053d81b80
jupyter-1  |         http://127.0.0.1:8888/lab?token=4d0ce25e42fd2211f4aa0b68536ff5b95b15145053d81b80
```


## Examples

- [Ollama getting started](./jupyter/examples/ollama_geting_started.ipynb)
- [Llamafile getting started](./jupyter/examples/llamafile_geting_started.ipynb)