#!/bin/bash

PORT=2211
docker run --rm -it --name tempssh -p $PORT:22 -v `pwd`/data:/data -v `pwd`/ssh/authorized_keys:/home/ubuntu/.ssh/authorized_keys abumusamq/temp-ssh
