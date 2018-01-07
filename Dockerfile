FROM ubuntu:latest

MAINTAINER Ivan E. Cao-Berg <icaoberg@andrew.cmu.edu>
LABEL Description="OMERO.searcher local client."
LABEL Vendor="Carnegie Mellon University"
LABEL Version="1.3"

ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update --fix-missing
RUN apt-get install -y --no-install-recommends apt-utils
RUN apt-get install -y build-essential git python python-dev python-setuptools nginx supervisor bcrypt libssl-dev libffi-dev libpq-dev vim redis-server rsyslog wget
RUN apt-get install -y python-numpy python-scipy python-matplotlib tree
RUN easy_install pip
RUN pip install ipython
RUN pip install sphinx
RUN pip install tabulate
RUN pip install scikit-learn
RUN pip install pandas
RUN pip install Pillow

# Configure environment
ENV SHELL /bin/bash
ENV USERNAME icaoberg
ENV UID 1000
RUN useradd -m -s /bin/bash -N -u $UID $USERNAME
RUN if [ ! -d /home/$USERNAME/ ]; then mkdir /home/$USERNAME/; fi
WORKDIR /home/$USERNAME/
USER $USERNAME

# Get OMERO.searcher local client
RUN wget -nc http://murphylab.web.cmu.edu/software/searcher/omero.searcher.client-v1.3.tgz
RUN tar -xvf omero.searcher.client-v1.3.tgz
RUN rm -fv omero.searcher.client-v1.3.tgz
RUN rm -rfv ./omero.searcher.client-v1.3/ricerca
RUN rm -rfv ./omero.searcher.client-v1.3/pyslic
RUN tree ./omero.searcher.client-v1.3