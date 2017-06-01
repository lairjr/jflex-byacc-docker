# Docker container with jFlex and Byacc

This docker image it's based on latest java and it has flex and byacc applications installed.

## Hot to use

### Using docker commands

1. First build the image with:
```
docker build -t containerjflex .
```

2. Then you are able to execute jflex and byacc commands with replacing the SOME_PATH to absolute folder path and SOMY_Y_FILE for the path of the `.y` file on the folder:
```bash
docker run -v SOME_PATH:/app -w /app -it containerjflex jflex SOME_FLEX_FILE
docker run -v SOME_PATH:/app -w /app -it containerjflex yacc SOME_Y_FILE
```

### Using makefile

1. First build the image with:
```bash
make image
```

2. Replace the `FOLDER_PATH` for your full folder path on the `Makefile`.

3. Then you are able to run jflex and byacc with:
```bash
make jflex flex=some_flex_file.flex
make yacc flex=some_y_file.y
```
