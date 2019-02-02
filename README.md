# docker-omero.searcher

[![Build Status](https://travis-ci.org/icaoberg/docker-omero.searcher.svg?branch=master)](https://travis-ci.org/icaoberg/docker-omero.searcher)
![Dockerhub](https://img.shields.io/docker/automated/icaoberg/omero.searcher.svg?style=flat)
[![GitHub issues](https://img.shields.io/github/issues/icaoberg/docker-omero.searcher.svg)](https://github.com/icaoberg/docker-omero.searcher/issues)
[![GitHub forks](https://img.shields.io/github/forks/icaoberg/docker-omero.searcher.svg)](https://github.com/icaoberg/docker-omero.searcher/network)
[![GitHub stars](https://img.shields.io/github/stars/icaoberg/docker-omero.searcher.svg)](https://github.com/icaoberg/docker-omero.searcher/stargazers)
[![GitHub license](https://img.shields.io/badge/license-GPLv3-blue.svg)](https://raw.githubusercontent.com/icaoberg/docker-omero.searcher/master/LICENSE)

## Overview

This Dockerfile prepares a container with OMERO.searcher local client. 

:warning: This is not a container for an OMERO instance with the OMERO.searcher plugin.

### OMERO.searcher Local Client

The local client allows a user to use a local query image against a pre-computed content database.

### Using the container

[![asciicast](https://asciinema.org/a/216275.svg)](https://asciinema.org/a/216275)

To build an image using the `Dockerfile` in this repository, run the command

```
➜ docker build -t "murphylab/omerosearcher" .
```

To run a container using the image above

```
➜  docker run -i -t "murphylab/omerosearcher"
```

If the container was built successfully, then the end of your output should look similar to this

![OMERO.searcher local client](/images/local.png)

### Pushing the container

```
docker build -t icaoberg/omero.searcher .
docker tag icaoberg/omero.searcher icaoberg/omero.searcher:1.3
docker push icaoberg/omero.searcher:1.3
```

## References

* B.H. Cho, I. Cao-Berg, J.A. Bakal, and R.F. Murphy (2012) [OMERO.searcher: Content-based image search for microscope images](https://www.nature.com/articles/nmeth.2086). Nature Methods 9:633-634.

* Leejay Wu, Christos Faloutsos, Katia P. Sycara, and Terry R. Payne. 2000. [FALCON: Feedback Adaptive Loop for Content-Based Retrieval](http://www.cs.cmu.edu/~christos/PUBLICATIONS/vldb2k-falcon.pdf). In Proceedings of the 26th International Conference on Very Large Data Bases (VLDB '00), Amr El Abbadi, Michael L. Brodie, Sharma Chakravarthy, Umeshwar Dayal, Nabil Kamel, Gunter Schlageter, and Kyu-Young Whang (Eds.). Morgan Kaufmann Publishers Inc., San Francisco, CA, USA, 297-306.

---
[![CBD](http://www.cbd.cmu.edu/wp-content/uploads/2017/07/wordpress-default.png)](http://www.cbd.cmu.edu)

Development of OMERO.searcher has been supported by US National Institutes of Health grants GM075205 (R.F. Murphy, PI), EB008516 (K.W. Eliceiri, PI), and GM092708 (C.M. Kane, PI), and by grant 095931 from the Wellcome Trust (Jason Swedlow, PI).

Copyright (c) 2012-2019 by the [Murphy Lab](http://murphylab.web.cmu.edu) at the [Computational Biology Department](http://www.cbd.cmu.edu) in [Carnegie Mellon University](http://www.cmu.edu)
