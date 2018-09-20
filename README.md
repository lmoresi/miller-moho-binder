
Miller & Moresi - Alaska Moho: demo on mybinder.org
==================================================

---

![Image showing map of results](https://www.dropbox.com/s/5s6uk6m3dlg5ysq/MohoSurfaceGradient-ClusteredGrids.png?raw=1)

_Preferred model, gradient and a comparison to heat flow data. The maps were
produced using the `cartopy` package. Instructions for reproducing these
maps are in the notebooks supplied with this package_

---

The [`miller_alaskamoho_srl2018`](https://pypi.org/project/miller_alaskamoho_srl2018/) python package is a self-consistent packaging of the
Miller & Moresi Alaska Moho model which
is also available in a docker distribution.
This repository repackages the docker distribution
very slightly to match the requirements of `mybinder.org`

It contains

   - This information
   - Scripts to install documentation and examples
   - Jupyter notebooks for manipulating the data
   - Jupyter notebooks for recreating our work

A demo is available on [mybinder.org](http://mybinder.org) - open the notebook `A0-Index.ipynb`
to begin:

[![Binder](https://mybinder.org/badge.svg)](https://mybinder.org/v2/gh/lmoresi/miller-moho-binder/master)
