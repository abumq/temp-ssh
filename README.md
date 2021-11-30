## INTRO
Use this if you want to run a temporary SSH server and allow access with ssh keys.

This will mount `/data` directory to the running container and expose port 22.

## START

Simply run the image

```
sh start.sh
```

## NOTES

 * Simply add `ssh/authorized_keys` file and add public key there
 * By default `start.sh` will make SSH listen on port `2211` - you can change it in the script
 * Update `IP` and `PORT` variables in `test.sh` and run it to ensure it works
