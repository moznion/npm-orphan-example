FROM node:20.10.0-bookworm-slim

RUN groupadd -g 1001 mygroup && \
  useradd -m -s /bin/bash -u 1001 -g 1001 user
USER user

RUN mkdir /home/user/npm-orphan-example/
WORKDIR /home/user/npm-orphan-example/
COPY . .
COPY npmrc /home/user/.npmrc

RUN mkdir /tmp/inaccessible && chmod 444 /tmp/inaccessible # mark as readonly

