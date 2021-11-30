IP=127.0.0.1
PORT=2211

touch test.file
rsync -av --progress -e "ssh -p $PORT -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null" ./test.file test@$IP:/data/