# wepppy-docker-base

This is a docker image for running wepppy. It is based on ubuntu:22.04 and
installs all the necessary dependencies for wepppy. 

It is setup to run as a dev container with VS Code

## VS Code Instructions

1. First install Docker (Docker Desktop on Windows)

2. Install Microsoft VS Code

3. Clone wepppy

  3.1. On windows it might say it failed but the files will actually be there. If this occurs try adding it as a local repository in Github Desktop. Click "Yes" when it asks to initialize Git LFS. You should then be able to fetch origin to verify it is in sync with GitHub
  
  3.2. Manually clone the wepppy/all_your_base sub repository. Delete wepppy/all_your_base. Then open terminal in wepppy and run `git clone https://github.com/rogerlew/all_your_base`

3. Then clone `wepppy-docker-base` and open in vscode

4. Modify the .devcontainer/devcontainer.json file to point to the location of your wepppy repository.

5. Build the dev container (ctrl + shift + p) Dev Containers: Rebuild Container

6. Container should build without errors

7. Wepppy scripted runs can be verified with:

```
cd /workdir/wepppy/wepppy/_scripts
python3 python3 test_scripted_run.py
```

Should see the following:
![image](https://github.com/user-attachments/assets/efad81ca-91ed-42d1-84dd-0ba497f04fb9)
