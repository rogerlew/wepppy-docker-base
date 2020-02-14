# wepppy-docker-base

This is a docker image for running wepppy. It is based on ubuntu:bionic and
installs all the necessary dependencies for wepppy. The wepppy source directory
and weppcloud_runs directory is mounted to the container

A local geodata/weppcloud_runs folder needs to be created. The project runs are
stored in this folder. The geodata folder is mounted to the docker container

User will need to modify the volume mounts in the launch_image.sh script

To launch the image run the launch_image.sh script. This should start the Flask
webservice weppcloud/app.py on port 5003

To get a shell for the docker container run get_shell.sh

To kill the container run kill_image.sh
