#!/bin/bash

docker stop $(docker container ls | grep temp-ssh | awk '{print $1}')
