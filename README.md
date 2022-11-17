# docker debian rbenv nodenv pyenv

Example node app with yarn setup:
```docker
FROM amkisko/debian-rbenv-nodenv-pyenv as development

ENV NODE_ENV development
WORKDIR /app

RUN rbenv global 3.1.1
RUN pyenv global 2.7.18

COPY .node-version .
RUN nodenv install
RUN npm install -g yarn
RUN nodenv rehash

COPY package.json .
COPY yarn.lock .
RUN  yarn install
```
