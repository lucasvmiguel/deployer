# Deployer

## Description

It's the easist way to deploy in digitalocean's kubernetes

## How to use

* $DO_TOKEN: digitalocean's access token
* $PATH_OF_FILE: path where is the file to be deployed
* $FILENAME: default name *deployment.yaml*

```sh
docker run -v $PATH_OF_FILE:/root --env=DIGITALOCEAN_ACCESS_TOKEN=$DO_TOKEN --env=FILENAME=$FILENAME lucasvieira/deployer
```