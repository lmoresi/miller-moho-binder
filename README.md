
Miller & Moresi - Alaska Moho Model: demo on `mybinder.org`
==================================================

---

![Image showing map of results](https://www.dropbox.com/s/5s6uk6m3dlg5ysq/MohoSurfaceGradient-ClusteredGrids.png?raw=1)

_Preferred model, gradient and a comparison to heat flow data. The maps were
produced using the `cartopy` package. Instructions for reproducing these
maps are in the notebooks supplied with this package_

---

This package is a self-consistent packaging of the Miller & Moresi Alaska Moho model which
is available in a docker distribution. This repository repackages that distribution
very slightly to match the requirements of `mybinder.org`

It contains

   - This information
   - Scripts to install documentation and examples
   - Jupyter notebooks (like this one but with active code)
   - A docker container setup that can serve notebooks with all relevant software, data and dependencies

A demo is available on [mybinder.org](http://mybinder.org) - open the notebook `A0-Index.ipynb`
to begin:

[![Binder](https://mybinder.org/badge.svg)](https://mybinder.org/v2/gh/lmoresi/miller-moho-binder/master)
