# The existing docker image should be deployable on binder - we just need
# to copy the content across to the $HOME directory ... see
# https://mybinder.readthedocs.io/en/latest/dockerfile.html#when-should-you-use-a-dockerfile
# for details

# SHA tagging would be better
FROM lmoresi/miller-alaska-moho-srl2018:1.2.1

ENV NB_USER jovyan
ENV NB_UID 1000
ENV HOME /home/${NB_USER}

# tidy up

USER root

RUN pip install --no-cache-dir --upgrade notebook==5.*

RUN mkdir .scratch || true
RUN mv miller_alaskamoho_srl2018-src .scratch || true
RUN mv workspace .scratch || true
RUN mv Notebooks/A*ipynb .
RUN mv Notebooks/Figures .
RUN mv Notebooks/ShadedRelief .
RUN mv Notebooks/ModelConstruction .

## This is not used by binder at present (but for testing, it is helpful to have
## the notebook launched by default (but we hide this file !)

ADD run-jupyter.sh .run-jupyter.sh

## Set config options ??
RUN rm -rf .jupyter || true
RUN mkdir  .jupyter
ADD jupyter_notebook_config.py .jupyter/jupyter_notebook_config.py


RUN chown -R ${NB_UID} ${HOME}

USER ${NB_USER}

ENTRYPOINT ["/usr/local/bin/tini", "--", "/usr/local/bin/xvfbrun.sh"]
CMD ./.run-jupyter.sh
