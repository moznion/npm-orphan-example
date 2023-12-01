# npm-orphan-example

For https://github.com/npm/cli/issues/7053

## How to build a docker container

```
host:$ docker build . -t npm-orphan-example:latest
```

## How to reproduce it on the docker container

```
host:$ docker run -it --rm npm-orphan-example:latest bash
user@1861f9f6c650:~/npm-orphan-example$ npm start
```

