# Use an official Python runtime as a parent image
FROM ubuntu:bionic

ENV TZ=America/Los_Angeles
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN apt-get update && apt-get upgrade -y

RUN apt-get update && apt-get install -y \
  sqlite3 \
  gcc \
  gdal-bin \
  gdal-data \
  libgdal20\
  libgdal-dev \
  gfortran \
  libgfortran3 \
  git \
  git-lfs \
  apturl \
  ufw \
  gnutls-bin \
  python3.7-dev \
  python3-numpy \
  python3-scipy \
  python3-pip \
  python3-pycurl \
  python3-apt \
  python3-debian

RUN pip3 install pip --upgrade

RUN pip3 install pip-tools
RUN pip3 install python3-memcached
RUN pip3 install pygobject
RUN pip3 install pygdal==2.2.3.3
RUN pip3 install amqp==1.4.9
RUN pip3 install anyjson==0.3.3
RUN pip3 install Babel==2.5.3
RUN pip3 install bcrypt==3.1.4
RUN pip3 install billiard==3.3.0.22
RUN pip3 install blinker==1.4
RUN pip3 install celery==3.1.20
RUN pip3 install certifi==2018.1.18
RUN pip3 install cffi==1.11.5
RUN pip3 install chardet==3.0.4
RUN pip3 install click==6.7
RUN pip3 install cycler==0.10.0
RUN pip3 install Flask==1.0.2
RUN pip3 install Flask-BabelEx==0.9.3
RUN pip3 install Flask-Login==0.4.1
RUN pip3 install Flask-Mail==0.9.1
RUN pip3 install Flask-Principal==0.4.0
RUN pip3 install Flask-Script==2.0.6
RUN pip3 install Flask-Security==3.0.0
RUN pip3 install Flask-SQLAlchemy==2.3.2
RUN pip3 install Flask-WTF==0.14.2
RUN pip3 install idna==2.6
RUN pip3 install imageio==2.3.0
RUN pip3 install itsdangerous
RUN pip3 install Jinja2
RUN pip3 install jsonpickle==0.9.6
RUN pip3 install kiwisolver==1.0.1
RUN pip3 install kombu==3.0.33
RUN pip3 install MarkupSafe
RUN pip3 install matplotlib
RUN pip3 install netCDF4
RUN pip3 install olefile==0.45.1
RUN pip3 install oyaml
RUN pip3 install pandas
RUN pip3 install passlib==1.7.1
RUN pip3 install Pillow
RUN pip3 install psycopg2==2.7.4
RUN pip3 install pycparser==2.18
RUN pip3 install pygdaltools==1.1
RUN pip3 install pyparsing==2.2.0
RUN pip3 install pyproj==1.9.6
RUN pip3 install python-dateutil==2.7.2
RUN pip3 install pytz==2018.3
RUN pip3 install PyYAML==3.11
RUN pip3 install requests==2.21.0
RUN pip3 install requests-toolbelt==0.9.1
RUN pip3 install Shapely==1.6.3
RUN pip3 install six==1.11.0
RUN pip3 install speaklater==1.3
RUN pip3 install SQLAlchemy==1.3.3
RUN pip3 install ssh-import-id==5.5
RUN pip3 install urllib3==1.24.2
RUN pip3 install utm==0.4.2
RUN pip3 install what3words
RUN pip3 install markdown
RUN pip3 install awesome-codename

RUN apt-get install nano
RUN apt-get install curl
RUN apt-get install wget

WORKDIR /workdir

# Copy the current directory contents into the container at /app
#RUN git clone -b master https://github.com/rogerlew/wepppy.git

WORKDIR /workdir/wepppy

#RUN rm wepppy/climates/cligen/stations.db
#RUN rm wepppy/climates/cligen/2015_stations.db
#RUN rm wepppy/soils/ssurgo/data/statsgo/statsgo_spatial.db
#RUN rm wepppy/soils/ssurgo/data/statsgo/statsgo_tabular.db
#RUN rm wepppy/soils/ssurgo/data/surgo/surgo_tabular.db
#RUN git lfs pull

# RUN cp -R wepppy /usr/lib/python3/dist-packages/

VOLUME /geodata
VOLUME /workdir/wepppy/wepppy

# Make port 80 available to the world outside this container
EXPOSE 80
EXPOSE 5003

ENV PYTHONPATH=/workdir/wepppy/

# Run app.py when the container launches
CMD ["python3", "/workdir/wepppy/wepppy/weppcloud/app.py"]

# sudo docker run -i -t wepppydocker /bin/bash
# sudo docker run -i -p 5003:5003 -v geodata:/geodata -t wepppydocker
#
# To build image
# > sudo docker build --tag=wepppydocker .
#
# To run shell
# > sudo docker run -i -v /geodata:/geodata -t wepppydocker /bin/bash
#
# To launch WEPPcloud Server in standalone
# > sudo docker run -i -p 5000:80 -v /geodata:/geodata -t wepppydocker
