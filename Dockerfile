# 1) choose base container
# generally use the most recent tag

# base notebook, contains Jupyter and relevant tools
# See https://github.com/ucsd-ets/datahub-docker-stack/wiki/Stable-Tag 
# for a list of the most current containers we maintain
ARG BASE_CONTAINER=ghcr.io/ucsd-ets/rstudio-notebook:2023.2-stable

FROM $BASE_CONTAINER

LABEL maintainer="UC San Diego ITS/ETS <ets-consult@ucsd.edu>"

# 3) install packages using notebook user
USER jovyan

# RUN conda install -y scikit-learn

RUN pip install --no-cache-dir jupyter-server-proxy==3.2.2 --force-reinstall

# Override command to disable running jupyter notebook at launch
# CMD ["/bin/bash"]
