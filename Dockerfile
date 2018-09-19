# The existing docker image should be deployable on binder - we just need
# to copy the content across to the $HOME directory ... see
# https://mybinder.readthedocs.io/en/latest/dockerfile.html#when-should-you-use-a-dockerfile
# for details

# SHA tagging would be better
FROM lmoresi/miller-alaska-moho-srl2018:1.1

ENV NB_USER jovyan
ENV NB_UID 1000
ENV HOME /home/${NB_USER}

# tidy up

USER root
RUN mkdir .scratch && mv miller_alaskamoho_srl2018-src .scratch
RUN chown -R ${NB_UID} ${HOME}

USER ${NB_USER}
