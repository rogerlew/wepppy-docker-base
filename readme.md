# wepppy-docker-base

This is a docker image for running wepppy. It is based on ubuntu:22.04 and
installs all the necessary dependencies for wepppy. 

It is setup to run as a dev container with VS Code

## VS Code Instructions

1. First install Docker (Docker Desktop on Windows)

2. Install Microsoft VS Code

3. Then clone project and open in vscode

4. Build the dev container (ctrl + shift + p) Dev Containers: Rebuild Container

5. Container should build without errors

6. Wepppy scripted runs can be verified with:

```
cd /workdir/wepppy/wepppy/_scripts
python3 python3 test_scripted_run.py
```

Should see the following:
![image](https://github.com/user-attachments/assets/efad81ca-91ed-42d1-84dd-0ba497f04fb9)
