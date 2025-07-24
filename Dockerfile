FROM ubuntu:22.04 as base

ENV TZ=America/Los_Angeles
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
RUN apt-get update && apt-get upgrade -y && \
    apt-get install -y sqlite3 \
    build-essential \
    meson \
    ninja-build \
    pkg-config \
    gcc \
    gdal-bin \
    gdal-data \
    libgdal-dev \
    gfortran \
    git \
    git-lfs \
    apturl \
    ufw \
    gnutls-bin \
    python3-dev \
    python3-pip \
    vim \
    nano \
    curl \
    wget \
    rsync

RUN mkdir /workdir
WORKDIR /workdir

RUN pip3 install versioneer
RUN pip3 install build
RUN pip3 install affine==2.4.0
RUN pip3 install alembic==1.13.1
RUN pip3 install amqp==5.0.9
RUN pip3 install anyascii==0.3.2
RUN pip3 install appdirs==1.4.4
RUN pip3 install argon2-cffi==21.1.0
RUN pip3 install asciitree==0.3.3
RUN pip3 install astroid==2.9.3
RUN pip3 install async-timeout==4.0.3
RUN pip3 install attrs==21.2.0
RUN pip3 install awesome-codename==1.0.0
RUN pip3 install Babel==2.8.0
RUN pip3 install backcall==0.2.0
RUN pip3 install bcrypt==4.1.3
RUN pip3 install beautifulsoup4==4.10.0
RUN pip3 install beniget==0.4.1
RUN pip3 install billiard==3.6.4.0
RUN pip3 install bleach==6.1.0
# RUN pip3 install blosc==1.9.2
RUN pip3 install bokeh==3.5.0
RUN pip3 install Bottleneck==1.3.8
RUN pip3 install Brotli==1.0.9
RUN pip3 install cached-property==1.5.2
RUN pip3 install cachetools==5.4.0
RUN pip3 install cdo==1.5.6
RUN pip3 install celery==5.2.3
RUN pip3 install certifi==2020.6.20
RUN pip3 install cftime==1.5.2
RUN pip3 install chardet==4.0.0
RUN pip3 install charset-normalizer==2.0.6
RUN pip3 install click==8.1.7
RUN pip3 install cligj==0.7.2
RUN pip3 install cloudpickle==2.0.0
RUN pip3 install contourpy==1.2.1
RUN pip3 install cycler==0.11.0
RUN pip3 install Cython==3.0.10
RUN pip3 install dask==2024.5.1
RUN pip3 install dask-expr==1.1.1
RUN pip3 install decorator==4.4.2
RUN pip3 install defusedxml==0.7.1
RUN pip3 install Deprecated==1.2.14
RUN pip3 install distributed==2024.5.1
RUN pip3 install dnspython==2.6.1
RUN pip3 install email_validator==2.1.1
RUN pip3 install entrypoints==0.4
RUN pip3 install fasteners==0.14.1
RUN pip3 install fiona==1.9.6
RUN pip3 install Flask==3.0.3
RUN pip3 install Flask-Login==0.6.3
RUN pip3 install Flask-Mail==0.10.0
RUN pip3 install flask-mailman==1.1.0
RUN pip3 install Flask-Migrate==4.0.7
RUN pip3 install Flask-SQLAlchemy==3.1.1
RUN pip3 install Flask-WTF==1.2.1
RUN pip3 install fonttools==4.29.1
RUN pip3 install fs==2.4.12
RUN pip3 install fsspec==2022.1.0
RUN pip3 install gast==0.5.2
RUN pip3 install geopandas==0.14.4
RUN pip3 install git-filter-repo==2.45.0
RUN pip3 install HeapDict==1.0.1
RUN pip3 install idna==3.3
RUN pip3 install imageio==2.34.1
RUN pip3 install iniconfig==1.1.1
RUN pip3 install isort==5.6.4
RUN pip3 install jedi==0.18.0
RUN pip3 install jeepney==0.7.1
RUN pip3 install jsonpickle==3.0.4
RUN pip3 install jsonschema==3.2.0
RUN pip3 install keyring==23.5.0
RUN pip3 install matplotlib==3.9.0
RUN pip3 install mccabe==0.6.1
RUN pip3 install MetPy==1.6.2
RUN pip3 install mizani==0.11.4
RUN pip3 install monotonic==1.6
RUN pip3 install more-itertools==8.10.0
RUN pip3 install mypy-extensions==0.4.3
RUN pip3 install nest-asyncio==1.5.4
RUN pip3 install netCDF4==1.5.8
RUN pip3 install netifaces==0.11.0
RUN pip3 install notebook==6.4.8
RUN pip3 install numba==0.59.1
RUN pip3 install numexpr==2.10.0
RUN pip3 install oauthlib==3.2.0
RUN pip3 install olefile==0.46
RUN pip3 install openpyxl==3.0.9
RUN pip3 install OWSLib==0.31.0
RUN pip3 install oyaml==1.0
RUN pip3 install packaging==24.0
RUN pip3 install pandas==2.2.2
RUN pip3 install pandocfilters==1.5.0
RUN pip3 install paramiko==2.9.3
RUN pip3 install parso==0.8.1
RUN pip3 install partd==1.2.0
RUN pip3 install passlib==1.7.4
RUN pip3 install patsy==0.5.6
RUN pip3 install pbr==5.8.0
RUN pip3 install pexpect==4.8.0
RUN pip3 install pickleshare==0.7.5
RUN pip3 install pillow==10.3.0
RUN pip3 install Pint==0.23
RUN pip3 install platformdirs==2.5.1
RUN pip3 install plotnine==0.13.6
RUN pip3 install pluggy==0.13.0
RUN pip3 install ply==3.11
RUN pip3 install pooch==1.8.1
RUN pip3 install prometheus-client==0.9.0
RUN pip3 install psycopg2==2.9.9
RUN pip3 install ptyprocess==0.7.0
RUN pip3 install py==1.10.0
RUN pip3 install pyarrow==16.1.0
RUN pip3 install pyarrow-hotfix==0.6
RUN pip3 install pyasn1==0.6.0
RUN pip3 install pyasn1_modules==0.4.0
RUN pip3 install pycurl==7.44.1
RUN pip3 install Pygments==2.11.2
RUN pip3 install PyNaCl==1.5.0
RUN pip3 install pynvim==0.4.2
RUN pip3 install pyparsing==2.4.7
RUN pip3 install pyproj==3.6.1
RUN pip3 install pyrsistent==0.18.1
RUN pip3 install PySocks==1.7.1
RUN pip3 install pytest==6.2.5
RUN pip3 install pythran==0.10.0
RUN pip3 install pytz==2022.1
RUN pip3 install PyYAML==5.4.1
RUN pip3 install pyzmq==22.3.0
RUN pip3 install rasterio==1.3.10
RUN pip3 install redis==5.0.4
RUN pip3 install requests==2.25.1
RUN pip3 install requests-toolbelt==0.9.1
RUN pip3 install rq==1.16.2
RUN pip3 install rsa==4.9
RUN pip3 install scipy==1.13.1
RUN pip3 install SecretStorage==3.3.1
RUN pip3 install Send2Trash==1.8.1b0
RUN pip3 install shapely==2.0.4
RUN pip3 install six==1.16.0
RUN pip3 install snuggs==1.4.7
RUN pip3 install sortedcontainers==2.1.0
RUN pip3 install soupsieve==2.3.1
RUN pip3 install speaklater==1.3
RUN pip3 install speedtest-cli==2.1.3
RUN pip3 install SQLAlchemy==2.0.30
RUN pip3 install SQLAlchemy-Utils==0.41.2
RUN pip3 install ssh-import-id==5.11
RUN pip3 install statsmodels==0.14.2
RUN pip3 install stone==3.3.1
RUN pip3 install suds==1.1.2
RUN pip3 install sympy==1.9
RUN pip3 install tables==3.7.0
RUN pip3 install tblib==1.7.0
RUN pip3 install terminado==0.13.1
RUN pip3 install testpath==0.5.0
RUN pip3 install testresources==2.0.1
RUN pip3 install texttable==1.6.4
RUN pip3 install toml==0.10.2
RUN pip3 install toolz==0.11.2
RUN pip3 install tornado==6.4.1
RUN pip3 install traitlets==5.1.1
RUN pip3 install typing_extensions==4.12.0
RUN pip3 install tzdata==2024.1
RUN pip3 install ufoLib2==0.13.1
RUN pip3 install ufw==0.36.1
RUN pip3 install unattended-upgrades==0.1
RUN pip3 install unicodedata2==14.0.0
RUN pip3 install unittest2==1.1.0
RUN pip3 install uritemplate==4.1.1
RUN pip3 install urllib3==1.26.5
RUN pip3 install utm==0.7.0
RUN pip3 install vine==5.0.0
RUN pip3 install wadllib==1.3.6
RUN pip3 install wcwidth==0.2.5
RUN pip3 install webencodings==0.5.1
RUN pip3 install websocket-client==1.2.3
RUN pip3 install Werkzeug==3.0.3
RUN pip3 install what3words==3.1.1
RUN pip3 install widgetsnbextension==2.0.0
RUN pip3 install wrapt==1.13.3
RUN pip3 install WTForms==3.1.2
RUN pip3 install xarray==2024.5.0
RUN pip3 install xee==0.0.14
RUN pip3 install xlrd==1.2.0
RUN pip3 install xlwt==1.3.0
RUN pip3 install xyzservices==2024.6.0
RUN pip3 install yamlable==1.1.1
RUN pip3 install zict==3.0.0
RUN pip3 install zipp==1.0.0
RUN pip3 install python-dotenv
RUN pip3 install -U Flask-Security-Too

# install wepppy
RUN mkdir -p /workdir
ENV PYTHONPATH="/workdir/wepppy:${PYTHONPATH}"

# install rosetta
RUN cd /usr/lib/python3/dist-packages && git clone https://github.com/rogerlew/rosetta

# install wepppy2
RUN cd /workdir && git clone https://github.com/wepp-in-the-woods/wepppy2/
RUN echo "/workdir/wepppy2/" > /usr/lib/python3/dist-packages/wepp_runner.pth

# install weppcloud2
RUN cd /workdir && git clone https://github.com/wepp-in-the-woods/weppcloud2/
RUN echo "/workdir/wepppycloud2/" > /usr/lib/python3/dist-packages/weppcloud2.pth

# install wepppyo3
RUN cd /workdir && git clone https://github.com/wepp-in-the-woods/wepppyo3
RUN rsync -av --progress /workdir/wepppyo3/release/linux/py310/wepppyo3/  /usr/local/lib/python3.10/dist-packages/wepppyo3/

# install pydsstools
RUN cd /workdir && git clone https://github.com/gyanz/pydsstools/
RUN cd /workdir/pydsstools && pip3 install .
RUN cd /workdir/pydsstools/pydsstools && cp -r . /usr/local/lib/python3.10/dist-packages/pydsstools/

# install libfortran3
RUN wget http://archive.ubuntu.com/ubuntu/pool/universe/g/gcc-6/gcc-6-base_6.4.0-17ubuntu1_amd64.deb
RUN wget http://archive.ubuntu.com/ubuntu/pool/universe/g/gcc-6/libgfortran3_6.4.0-17ubuntu1_amd64.deb
RUN dpkg -i gcc-6-base_6.4.0-17ubuntu1_amd64.deb
RUN dpkg -i libgfortran3_6.4.0-17ubuntu1_amd64.deb

# this is for earth DEM data
#RUN echo "OPENTOPOGRAPHY_API_KEY=" > /workdir/wepppy/wepppy/locales/earth/opentopography/.env

# install and start redis server
RUN apt-get install -y redis-server supervisor
RUN sed -i 's/daemonize yes/daemonize no/g' /etc/redis/redis.conf

ENV PROJ_LIB=/usr/share/proj/

# for external volume geodata
VOLUME /geodata

# Make port 80 available to the world outside this container
EXPOSE 80
EXPOSE 5003

ENV PYTHONPATH=/workdir/wepppy/

ARG CACHEBUST=1
COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf

CMD ["/usr/bin/supervisord", "-c", "/etc/supervisor/conf.d/supervisord.conf"]

