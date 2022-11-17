#!/bin/bash

docker build . --tag amkisko/debian-rbenv-nodenv-pyenv
docker push amkisko/debian-rbenv-nodenv-pyenv:latest

