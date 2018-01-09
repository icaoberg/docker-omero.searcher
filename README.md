# docker-omero.searcher

![Build Status](https://travis-ci.org/icaoberg/docker-omero.searcher.svg?branch=master)
[![GitHub issues](https://img.shields.io/github/issues/icaoberg/docker-omero.searcher.svg)](https://github.com/icaoberg/docker-omero.searcher/issues)
[![GitHub forks](https://img.shields.io/github/forks/icaoberg/docker-omero.searcher.svg)](https://github.com/icaoberg/docker-omero.searcher/network)
[![GitHub stars](https://img.shields.io/github/stars/icaoberg/docker-omero.searcher.svg)](https://github.com/icaoberg/docker-omero.searcher/stargazers)
[![GitHub license](https://img.shields.io/badge/license-GPLv3-blue.svg)](https://raw.githubusercontent.com/icaoberg/docker-omero.searcher/master/LICENSE)

## Overview of OMERO.searcher

OMERO.searcher is an extension of the OMERO.web client that provides the ability to search for images by their content (e.g., subcellular patterns) rather than just by their annotations. It was developed by the Murphy group at Carnegie Mellon University.

OMERO.searcher

* finds images whose content, as reflected by subcellular location image features, is similar to one or more query images.

* can use positive and/or negative examples.

* can be iterative, meaning it allows the user to refine the search results (a process referred to as relevance feedback).



To build a container using the `Dockerfile` in this repository, run the command

```
➜ docker build -t "murphylab/omerosearcher" .
```

This should build a container

```
➜  docker container ls -a
```

## References

* B.H. Cho, I. Cao-Berg, J.A. Bakal, and R.F. Murphy (2012) [OMERO.searcher: Content-based image search for microscope images](https://www.nature.com/articles/nmeth.2086). Nature Methods 9:633-634.

* Leejay Wu, Christos Faloutsos, Katia P. Sycara, and Terry R. Payne. 2000. FALCON: Feedback Adaptive Loop for Content-Based Retrieval. In Proceedings of the 26th International Conference on Very Large Data Bases (VLDB '00), Amr El Abbadi, Michael L. Brodie, Sharma Chakravarthy, Umeshwar Dayal, Nabil Kamel, Gunter Schlageter, and Kyu-Young Whang (Eds.). Morgan Kaufmann Publishers Inc., San Francisco, CA, USA, 297-306.
