FROM jupyter/scipy-notebook:python-3.11

ENV TZ=Asia/Seoul
USER root

RUN apt-get update && \
    apt-get install -y --no-install-recommends fonts-nanum fonts-nanum-coding git vim && \
    rm -rf /var/lib/apt/lists/*

COPY requirements.txt /tmp/requirements.txt
RUN pip install --no-cache-dir -r /tmp/requirements.txt

RUN fix-permissions "/home/jovyan"
USER ${NB_UID}
WORKDIR /home/jovyan
