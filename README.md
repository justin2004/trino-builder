# trino-builder

## build trino from source

- have `make` and `docker` installed
- run `make`
  - wait a while
- find a built trino client `.jar` and a trino server `.tar.gz` in your current directory


## example

```bash
$ make

...

[INFO] trino-test-jdbc-compatibility-old-server ........... SUCCESS [  1.815 s]
[INFO] ------------------------------------------------------------------------
[INFO] BUILD SUCCESS
[INFO] ------------------------------------------------------------------------
[INFO] Total time:  24:11 min
[INFO] Finished at: 2025-01-24T14:30:17Z
[INFO] ------------------------------------------------------------------------
$ ls
Dockerfile                   README.md                    trino-server-468.tar.gz
Makefile                     trino-cli-468-executable.jar
```
