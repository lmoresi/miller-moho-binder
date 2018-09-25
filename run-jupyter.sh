#!/usr/bin/env bash

###############################
## On mybinder.org, the CMD is over-ridden
## and the starting notebook should instead
## be added to the configuration file
###############################

export START_NB="A0-Index.ipynb"

PASS=${NB_PASSWD:-""}
OPEN=${START_NB:-""}
PORT=${NB_PORT:-8888}

# cd /home/jovyan/Notebooks

jupyter-notebook --port=$NB_PORT --ip='*' --no-browser \
       --NotebookApp.token=$NB_PASSWD --NotebookApp.default_url=/tree/$OPEN

# Don't exit

while true; do
  sleep 600
done
